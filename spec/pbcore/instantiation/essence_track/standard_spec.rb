require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::Standard do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackStandard source="PBCore essenceTrack/video"
                           ref="http://pbcore.org/vocabularies/essenceTrackStandard/video%23ntsc">
        NTSC
     </essenceTrackStandard>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore essenceTrack/video",
                                                          ref: "http://pbcore.org/vocabularies/essenceTrackStandard/video%23ntsc"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "NTSC"
    end
  end
end
