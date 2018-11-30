require 'spec_helper'

RSpec.describe PBCore::Creator do
  subject { described_class.new }

  let(:xml) do
    "<pbcoreCreator>
       <creator>foo</creator>
       <creatorRole>bar</creatorRole>
     </pbcoreCreator>"
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements creator: PBCore::Creator::Creator,
                                                        role: PBCore::Creator::Role
    end
  end
end
