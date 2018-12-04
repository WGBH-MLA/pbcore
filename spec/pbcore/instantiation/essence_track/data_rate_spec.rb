require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::DataRate do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackDataRate unitsOfMeasure="kbps" annotation="compressed">1700</essenceTrackDataRate>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "kbps",
                                                          annotation: "compressed"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "1700"
    end
  end
end
