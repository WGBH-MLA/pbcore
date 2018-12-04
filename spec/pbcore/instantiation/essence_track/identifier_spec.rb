require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::Identifier do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackIdentifier source="Digital Asset Management System">898_Laura.wav</essenceTrackIdentifier>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "Digital Asset Management System"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "898_Laura.wav"
    end
  end
end
