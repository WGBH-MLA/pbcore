require 'spec_helper'

RSpec.describe PBCore::Description do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreDescription descriptionType="Program"
                        descriptionTypeRef="http://metadataregistry.org/concept/show/id/1686.html">
       On May 13, 1607, three English sailing vessels drop anchor beside a small island fringed by swamps in the James River, Virginia.
     </pbcoreDescription>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values type: "Program",
                                                          type_ref: "http://metadataregistry.org/concept/show/id/1686.html"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "On May 13, 1607, three English sailing vessels drop anchor beside a small island fringed by swamps in the James River, Virginia."
    end
  end
end
