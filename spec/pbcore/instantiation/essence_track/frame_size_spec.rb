require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::FrameSize do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackFrameSize unitsOfMeasure="pixels"
                            source="PBCore essenceTrackFrameSize"
                            ref="http://metadataregistry.org/conceptprop/list/concept_id/1461.html"
                            annotation="full screen">
       720x480
     </essenceTrackFrameSize>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "pixels",
                                                          source: "PBCore essenceTrackFrameSize",
                                                          ref: "http://metadataregistry.org/conceptprop/list/concept_id/1461.html",
                                                          annotation: "full screen"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "720x480"
    end
  end
end
