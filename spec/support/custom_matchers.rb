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

# Passes when all child elements are present, taking into account that some
# child elements are mutually exclusive.
RSpec::Matchers.define :have_all_child_elements_present do
  match do |pbcore_element|
    # Some elements have child elements that are mutually exclusive. Identify
    # those here and test them separately from the rest of the child elements.
    expect_exactly_one = case pbcore_element
    when PBCore::Extension, PBCore::Instantiation::Extension
      [:wrap, :embedded]
    when PBCore::RightsSummary, PBCore::Instantiation::Rights
      [:summary, :link]
    end

    # Expect all child elements to be present, unless they are mutually
    # exclusive child elements.
    expect_all = pbcore_element.elements.keys - Array(expect_exactly_one)
    good = expect_all.all? { |accessor| pbcore_element.send(accessor).present? }

    # If this element has mutually exclusive child elements, test for exactly
    # one of them.
    if expect_exactly_one
      good &= expect_exactly_one.one? { |accessor| pbcore_element.send(accessor).present? }
    end

    good
  end
end
