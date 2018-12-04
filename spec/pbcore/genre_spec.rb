require 'spec_helper'

RSpec.describe PBCore::Genre do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreGenre source="PBCore pbcoreGenre" ref="http://metadataregistry.org/concept/show/id/2449.html">
       History
     </pbcoreGenre>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore pbcoreGenre",
                                                          ref: "http://metadataregistry.org/concept/show/id/2449.html"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "History"
    end
  end
end
