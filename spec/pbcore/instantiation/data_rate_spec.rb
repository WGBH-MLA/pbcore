require 'spec_helper'

RSpec.describe PBCore::Instantiation::DataRate do
  subject { described_class.new }
  let(:xml) do
    '<instantiationDataRate unitsOfMeasure="Mbit/s">27</instantiationDataRate>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "Mbit/s"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "27"
    end
  end
end
