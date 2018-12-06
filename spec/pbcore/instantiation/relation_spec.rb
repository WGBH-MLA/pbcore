require 'spec_helper'
require 'equivalent-xml'

RSpec.describe PBCore::Instantiation::Relation do
  let(:subject) { described_class.new }
  let(:xml) do
    '<instantiationRelation>
       <instantiationRelationType source="PBCore relationType" ref="http://metadataregistry.org/concept/list/vocabulary_id/161.html">Derived from</instantiationRelationType>
       <instantiationRelationIdentifier>Barcode238898</instantiationRelationIdentifier>
     </instantiationRelation>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has child elements' do
      expect(subject).to have_parsed_xml_child_elements type: PBCore::Instantiation::Relation::Type,
                                                        identifier: PBCore::Instantiation::Relation::Identifier
    end

    describe '.to_xml' do
      it 'outputs the XML equivalent to what was parsed' do
        expect(subject.to_xml).to be_equivalent_to xml
      end
    end
  end
end
