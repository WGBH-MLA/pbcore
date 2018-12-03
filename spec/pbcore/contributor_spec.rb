require 'spec_helper'

RSpec.describe PBCore::Contributor do
  subject { described_class.new }

  let(:xml) do
    '<pbcoreContributor>
       <contributor>Yo-Yo Ma</contributor>
       <contributorRole source="PBCore contributorRole"
                        ref="http://metadataregistry.org/conceptprop/list/concept_id/1330.html">
         Instrumentalist
       </contributorRole>
     </pbcoreContributor>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements contributor: PBCore::Contributor::Contributor,
                                                        role: PBCore::Contributor::Role
    end
  end
end
