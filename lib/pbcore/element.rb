require 'sax-machine'

module SAXMachine::SAXAbstractHandler
  NO_BUFFER = ''
end

module PBCore
  # TODO: decouple XML building behavior from schema-related declarations.
  class Element
    include SAXMachine

    # Defines which accessor is used to get the value within an element.
    # Here we defined it be simply :value.
    value(:value, {}) do |val|
      val == :no_buffer ? nil : val
    end

    # Returns a hash of child element instances.
    def elements(key_by_xml_name: false)
      key_value_pairs_array = self.class.all_element_config.map do |name, element_configs|
        # SAXMachine allows you to declare multiple elements with the same name
        # but we don't do tha with PBCore, so just grab the first and only one.
        element_config = element_configs.first
        # get the accessor name by which to get the value
        accessor = element_config.instance_variable_get(:@as)

        # fetch the value by calling the accessor
        value = send(accessor)
        # create the key, value pair that will go into the Hash[] construct.
        key = key_by_xml_name ? name : accessor
        [ key,  value ]
      end

      Hash[ key_value_pairs_array ]
    end

    # Shortcut for getting xml attributes.
    def xml_attributes; attributes(key_by_xml_name: true); end

    # Returns a hash of attrubutes as the should appear in the XML.
    def attributes(key_by_xml_name: false)
      xml_attrs = Hash[
        self.class.sax_config.top_level_attributes.map do |attr|
          accessor = attr.instance_variable_get(:@as)
          key = key_by_xml_name ? attr.name : accessor
          [ key, send(accessor) ]
        end
      ]
      xml_attrs
    end

    # Executes the block defined with the class method `build_xml`. Uses a
    # Nokogiri::XML::Builder instance (either passed in or instantiated) to
    # build the XML, and then returns the builder instance.
    def build(builder=nil)
      raise ArgumentError, "#{self.class}#build expects a Nokogiri::XML::Builder class, but #{builder.class} was given" unless builder.nil? || builder.is_a?(Nokogiri::XML::Builder)
      PBCore.fail_if_missing_build_xml_block(element_class: self.class)
      builder ||= Nokogiri::XML::Builder.new
      instance_exec builder, &self.class.build_block
      builder
    end

    # Builds the xml using #build with a new instance of Nokogiri::XML::Builder
    # and immediately calls to_xml on it.
    def to_xml
      build.to_xml
    end

    # Define the class interfaces for all PBCore elements.
    class << self
      attr_reader :build_block

      # Class method to allow extended classes to declaratively the logic used
      # to build XML using Nokogiri::XML::Builder.
      def build_xml(&block)
        raise ArgumentError, "#{self.class}.build_xml requires a block with one parameter" unless block_given? && block.arity == 1
        @build_block = block
      end

      def attribute_config
        sax_config.top_level_attributes
      end

      # Returns true if the element is configured to contain a value.
      def has_a_value?
        !sax_config.top_level_element_value.nil?
      end

      # Returns the SAXMachine::SaxConfig::ElementConfig instances that allow
      # for a single instance of another element.
      def top_level_element_config
        sax_config.top_level_elements.reject do |_name, element_configs|
          element_configs.detect do |element_config|
            element_config.instance_variable_get(:@as) == :value
          end
        end
      end

      # Returns the SAXMachine::SaxConfig::ElementConfig that allow for
      # multiple instances of other elements, i.e. "collection" elements which
      # is not to be confused with <pbcoreCollection>.
      def collection_element_config
        sax_config.collection_elements.reject do |element_config|
          element_config.instance_variable_get(:@as) == :value
        end
      end

      def all_element_config
        top_level_element_config.merge(collection_element_config) do |name, top_level_element_cfg, coll_element_cfg|
          coll_element_cfg.present? ? coll_element_cfg : top_level_element_cfg
        end
      end

      def has_sax_machine_attribute?(name, opts={})
        sax_config.top_level_attributes.any? do |attr_config|
          opts.all? do |key, val|
            val == attr_config.instance_variable_get("@#{key}".to_sym)
          end
        end
      end

      def has_sax_machine_value_element?
        !sax_config.top_level_element_value.empty?
      end

      def has_sax_machine_top_level_element?(name, opts={})
        Array(sax_config.top_level_elements.fetch(name.to_s, nil)).any? do |element_config|
          opts.all? do |key, val|
            # This is a quirk of SAXMachine: when you declare a top-level
            # element with the .element class method, it takes your :class
            # option and puts it into an instance var called @data_class.
            key = :data_class if key == :class
            val == element_config.instance_variable_get("@#{key}".to_sym)
          end
        end
      end

      def has_sax_machine_collection_element?(name, opts={})
        # NOTE: Accessing #collection_elements with square brackets has the
        # unwanted side affect of creating an entry in the collection_elements,
        # which we don't want. So we use #fetch here
        Array(sax_config.collection_elements.fetch(name.to_s, nil)).any? do |element_config|
          opts.all? do |key, val|
            # This is a quirk of SAXMachine; for some reason it converts the
            # config option :as to a string when assigning it to the
            # ConfigElement instance, so we need to convert opts[:as] param to
            # string in order to compare them accurately.
            val = val.to_s if key == :as
            val == element_config.instance_variable_get(:"@#{key}")
          end
        end
      end
    end
  end
end
