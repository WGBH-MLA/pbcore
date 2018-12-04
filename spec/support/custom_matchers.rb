RSpec::Matchers.define :have_sax_machine_attribute do |attr_name|
  match do |pbcore_element|
    pbcore_element.class.sax_config.top_level_attributes.map(&:name).include? attr_name.to_s
  end
end

RSpec::Matchers.define :have_parsed_xml_attribute_values do |attributes_hash|
  match do |pbcore_element|
    attributes_hash.reduce(true) do |memo, attr_and_val|
      attr_name, attr_val = attr_and_val
      memo && pbcore_element.send(attr_name) == attr_val
    end
  end
end

RSpec::Matchers.define :have_parsed_xml_value do |parsed_xml_value|
  match do |pbcore_element|
    pbcore_element.value.strip == parsed_xml_value.strip
  end
end

RSpec::Matchers.define :have_parsed_xml_child_elements do |child_elements|
  match do |pbcore_element|
    child_elements.reduce(true) do |memo, accessor_and_child_element_class|
      accessor, child_element_class = accessor_and_child_element_class
      memo && Array(pbcore_element.send(accessor)).all? { |obj| obj.is_a?(child_element_class) }
    end
  end
end
