require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::SamplingRate do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackSamplingRate unitsOfMeasure="kHz">44.1</essenceTrackSamplingRate>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "kHz"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "44.1"
    end
  end
end
