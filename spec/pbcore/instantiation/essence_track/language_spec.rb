require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::Language do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackLanguage source="IS0 639.2"
                           ref="http://id.loc.gov/vocabulary/iso639-2/eng">
       eng
     </essenceTrackLanguage>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "IS0 639.2",
                                                          ref: "http://id.loc.gov/vocabulary/iso639-2/eng"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "eng"
    end
  end
end
