RSpec::Matchers.define :have_sax_machine_attribute do |attr_name|
  match do |pbcore_element|
    pbcore_element.class.sax_config.top_level_attributes.map(&:name).include? attr_name.to_s
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
