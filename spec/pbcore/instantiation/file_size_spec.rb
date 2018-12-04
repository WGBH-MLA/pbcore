require 'spec_helper'

RSpec.describe PBCore::Instantiation::FileSize do
  subject { described_class.new }
  let(:xml) do
    '<instantiationFileSize unitsOfMeasure="kB">125</instantiationFileSize>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "kB"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "125"
    end
  end
end
