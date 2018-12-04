require 'sax-machine'

module PBCore
  # TODO: decouple XML building behavior from schema-related declarations.
  class Element
    include SAXMachine
    include PBCore::Attributes::Common

    # Defines which accessor is used to get the value within an element.
    # Here we defined it be simply :value.
    value :value

    # Defind attributes common to all PBCore elements.
    attribute :source
    attribute :ref
    attribute :annotation
    attribute :version

    def attributes
      self.class.sax_config.top_level_attributes
    end

    # Returns a hash of attrubetes as the should appear in the XML.
    def xml_attributes_hash
      Hash[
        attributes.map do |attr|
          # No accessor here for attr.as, so that's why we use
          # instance_variable_get(:@as)
          [ attr.name, send(attr.instance_variable_get(:@as)) ]
        end
      ]
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
    end
  end
end
