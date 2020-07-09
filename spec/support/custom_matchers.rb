require 'equivalent-xml'

RSpec::Matchers.define :have_sax_machine_attribute do |name, opts={}|
  match do |pbcore_element_class|
    pbcore_element_class.has_sax_machine_attribute? name, opts
  end
end

RSpec::Matchers.define :have_sax_machine_value_element do
  match do |pbcore_element_class|
    pbcore_element_class.has_sax_machine_value_element?
  end
end

RSpec::Matchers.define :have_sax_machine_top_level_element do |name, opts = {} |
  match do |pbcore_element_class|
    pbcore_element_class.has_sax_machine_top_level_element? name, opts
  end
end

RSpec::Matchers.define :have_sax_machine_collection_element do |name, opts = {} |
  match do |pbcore_element_class|
    pbcore_element_class.has_sax_machine_collection_element? name, opts
  end
end


RSpec::Matchers.define :have_parsed_xml_attribute_values do |attributes_hash|
  match do |pbcore_element|
    attributes_hash.reduce(true) do |result, attr_and_val|
      attr_name, attr_val = attr_and_val
      this_result = pbcore_element.send(attr_name) == attr_val
      unless this_result
        @missing_attrs ||= {}
        @missing_attrs[attr_name] = attr_val
      end
      result && this_result
    end
  end

  failure_message do |pbcore_element|
    missing_attrs_str = @missing_attrs.map{ |attr_name, attr_val| ":#{attr_name} => \"#{attr_val}\""}.join(', ')
    "Expected #{pbcore_element} to have attribute values: #{missing_attrs_str}."
  end
end

RSpec::Matchers.define :have_parsed_xml_value do |parsed_xml_value|
  match do |pbcore_element|
    pbcore_element.value.strip == parsed_xml_value.strip
  end
end

RSpec::Matchers.define :have_parsed_xml_child_elements do |child_elements|
  match do |pbcore_element|
    child_elements.reduce(true) do |result, accessor_and_child_element_class|
      accessor, child_element_class = accessor_and_child_element_class
      array_of_children = Array(pbcore_element.send(accessor))
      this_result = array_of_children.all? { |obj| obj.is_a?(child_element_class) }
      this_result &= array_of_children.count > 0
      unless this_result
        @missing_child_elements ||= []
        @missing_child_elements << child_element_class
      end
      result && this_result
    end
  end

  failure_message do |pbcore_element|
    "expected #{pbcore_element} to have parsed xml child elements #{@missing_child_elements.join(', ')}"
  end
end

# NOTE: This only tests the round-trippability of PBCore XML produced by the
# PBCore gem models. Guaranteeing the round-trippability of all possible PBCore
# permutations is too hard.
RSpec::Matchers.define :produce_roundtrippable_xml do
  match do |pbcore_element|
    @xml_1 = pbcore_element.to_xml
    @xml_2 = pbcore_element.class.parse(@xml_1).to_xml
    EquivalentXml.equivalent?(@xml_1, @xml_2)
  end

  failure_message do |pbcore_element|
    "expected #{pbcore_element.class} to produce round-trippable XML." \
    "\n\nOriginal XML = #{@xml_1}" \
    "\n\nReparsed XML = #{@xml_2}"
  end
end

RSpec::Matchers.define :contain_one_pbcore_element do | name, config_opts={} |
  match do |pbcore_element_class|
    pbcore_element_class.contains_one? name, config_opts
  end
end

RSpec::Matchers.define :contain_multiple_pbcore_elements do | name, config_opts={} |
  match do |pbcore_element_class|
    elements_config = pbcore_element_class.contains_multiple? name, config_opts
  end
end

RSpec::Matchers.define :have_child_elements do |accessor, klass|
  match do |pbcore_element|
    if pbcore_element.respond_to? accessor
      if pbcore_element.send(accessor).respond_to?(:each)
        pbcore_element.send(accessor).all? { |child_element| child_element.is_a? klass }
      end
    end
  end

  failure_message do |pbcore_element|
    unless pbcore_element.respond_to? accessor
      "#{pbcore_element.class} #{accessor}"
      if pbcore_element.send(accessor).respond_to?(:each)
        pbcore_element.send(accessor).all? { |child_element| child_element.is_a? klass }
      end
    end
  end
end

# Shortcut matcher for specific attributes.
def have_common_pbcore_attributes
  have_attributes(source: be_present,
                  ref: be_present,
                  annotation: be_present)
end
