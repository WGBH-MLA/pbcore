require 'spec_helper'

RSpec.describe PBCore::Contributor::Role do
  subject { described_class.new }

  let(:xml) do
    '<contributorRole source="PBCore contributorRole"
                      ref="http://metadataregistry.org/conceptprop/list/concept_id/1330.html">
       Instrumentalist
     </contributorRole>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Instrumentalist"
    end

    it 'has parsed attributes' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore contributorRole",
                                                          ref: "http://metadataregistry.org/conceptprop/list/concept_id/1330.html"
    end
  end
end
