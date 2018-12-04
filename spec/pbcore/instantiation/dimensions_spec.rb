require 'spec_helper'

RSpec.describe PBCore::Instantiation::Dimensions do
  subject { described_class.new }
  let(:xml) do
    '<instantiationDimensions unitsOfMeasure="pixels">100x200</instantiationDimensions>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "pixels"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "100x200"
    end
  end
end
