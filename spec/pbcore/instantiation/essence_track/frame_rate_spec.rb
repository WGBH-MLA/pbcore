require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::FrameRate do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackFrameRate unitsOfMeasure="fps" annotation="interlaced">29.97</essenceTrackFrameRate>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "fps",
                                                          annotation: "interlaced"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "29.97"
    end
  end
end
