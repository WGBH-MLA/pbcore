require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::Type do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackType>Video</essenceTrackType>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Video"
    end
  end
end
