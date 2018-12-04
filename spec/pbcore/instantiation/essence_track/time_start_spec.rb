require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::TimeStart do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackTimeStart>00:00:32:05</essenceTrackTimeStart>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "00:00:32:05"
    end
  end
end
