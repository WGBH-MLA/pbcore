require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::PlaybackSpeed do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackPlaybackSpeed unitsOfMeasure="rpm">78</essenceTrackPlaybackSpeed>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "rpm"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "78"
    end
  end
end
