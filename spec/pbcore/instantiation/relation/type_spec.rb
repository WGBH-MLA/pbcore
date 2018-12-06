require 'spec_helper'

RSpec.describe PBCore::Instantiation::Relation::Type do
  subject { described_class.new }

  let(:xml) do
    '<instantiationRelationType source="PBCore relationType" ref="http://metadataregistry.org/concept/list/vocabulary_id/161.html">Derived from</instantiationRelationType>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore relationType"
    end

    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Derived from"
    end
  end
end