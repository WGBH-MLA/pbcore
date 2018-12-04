require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::Duration do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackDuration>00:56:22:13</essenceTrackDuration>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "00:56:22:13"
    end
  end
end
