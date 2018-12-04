require 'spec_helper'

RSpec.describe PBCore::Instantiation::Tracks do
  subject { described_class.new }
  let(:xml) do
    '<instantiationTracks>1 video track, 1 audio track</instantiationTracks>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "1 video track, 1 audio track"
    end
  end
end
