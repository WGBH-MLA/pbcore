require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::AspectRatio do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackAspectRatio unitsOfMeasure="foo"
                              source="PBCore essenceTrackAspectRatio"
                              ref="http://metadataregistry.org/conceptprop/list/concept_id/1439.html">
       4:3 (16:9 letterbox)
     </essenceTrackAspectRatio>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "foo",
                                                          source: "PBCore essenceTrackAspectRatio",
                                                          ref: "http://metadataregistry.org/conceptprop/list/concept_id/1439.html"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "4:3 (16:9 letterbox)"
    end
  end
end
