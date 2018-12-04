require 'spec_helper'

RSpec.describe PBCore::Instantiation::Colors do
  subject { described_class.new }
  let(:xml) do
    '<instantiationColors source="instantiationColors"
                          ref="http://metadataregistry.org/conceptprop/list/concept_id/1484.html"
                          annotation="sepia">
       Toned
     </instantiationColors>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "instantiationColors",
                                                          ref: "http://metadataregistry.org/conceptprop/list/concept_id/1484.html",
                                                          annotation: "sepia"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Toned"
    end
  end
end
