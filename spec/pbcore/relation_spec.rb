require 'spec_helper'

RSpec.describe PBCore::Relation do
  subject { described_class.new }

  let(:xml) do
    "<pbcoreRelation>
       <pbcoreRelationType>Is Part Of</pbcoreRelationType>
       <pbcoreRelationIdentifier>NOVA</pbcoreRelationIdentifier>
     </pbcoreRelation>"
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements type: PBCore::Relation::Type,
                                                        identifier: PBCore::Relation::Identifier
    end
  end
end
