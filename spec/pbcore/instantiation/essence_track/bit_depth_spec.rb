require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::BitDepth do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackBitDepth unitsOfMeasure="foo" annotation="color">10</essenceTrackBitDepth>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values units_of_measure: "foo",
                                                          annotation: "color"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "10"
    end
  end
end
