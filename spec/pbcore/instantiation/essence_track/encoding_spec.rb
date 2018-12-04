require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::Encoding do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackEncoding source="PBCore essenceTrackEncoding"
                           ref="http://metadataregistry.org/concept/show/id/2889.html">
       H.264/MPEG-4 AVC: QuickTime H.264
     </essenceTrackEncoding>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore essenceTrackEncoding",
                                                          ref: "http://metadataregistry.org/concept/show/id/2889.html"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "H.264/MPEG-4 AVC: QuickTime H.264"
    end
  end
end
