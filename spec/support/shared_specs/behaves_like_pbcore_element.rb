def factory_for(pbcore_element_class)
  require 'active_support/inflector/methods'
  pbcore_element_class.to_s.
                       gsub('::', '_').
                       gsub(/([a-z])([A-Z])/, '\1_\2').
                       downcase
end


RSpec.shared_examples "PBCore Element" do
  context 'with a "complete" instance generated by factory' do
    subject { FactoryBot.build(factory_for(described_class)) }

    it 'has values for all attributes' do
      attribute_expectations = subject.attributes.transform_values { be_present }
      expect(subject).to have_attributes attribute_expectations
    end

    it 'has values for all elements' do

      expect(subject).to have_all_child_elements_present

      # element_expectations = subject.elements.transform_values { be_present }

      # NOTE: 'have_attributes' is an RSpec matcher that just checks for
      # accessors/values on an object, and can be used to test both
      # SAXMachine attributes *and* child elements.
      # expect(subject).to have_attributes element_expectations
    end

    it { is_expected.to produce_roundtrippable_xml }
  end
end
