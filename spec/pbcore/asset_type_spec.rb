require 'spec_helper'

RSpec.describe PBCore::AssetType do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreAssetType source="pbcoreAssetType" ref="http://metadataregistry.org/concept/show/id/1627.html">
       Story
     </pbcoreAssetType>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "pbcoreAssetType",
                                                          ref: "http://metadataregistry.org/concept/show/id/1627.html"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Story"
    end
  end
end
