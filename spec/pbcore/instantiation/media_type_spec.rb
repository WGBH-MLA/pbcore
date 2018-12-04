require 'spec_helper'

RSpec.describe PBCore::Instantiation::MediaType do
  subject { described_class.new }
  let(:xml) do
    '<instantiationMediaType source="PBCore instantiationMediaType"
                             ref="http://metadataregistry.org/concept/show/id/1491.html">
       Moving Image
     </instantiationMediaType>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore instantiationMediaType",
                                                          ref: "http://metadataregistry.org/concept/show/id/1491.html"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Moving Image"
    end
  end
end
