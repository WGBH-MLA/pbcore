require 'spec_helper'

RSpec.describe PBCore::Extension do
  subject { described_class.new }

  let(:xml) do
    "<pbcoreExtension>
       <extensionWrap>
         <extensionElement>RightsHolderName</extensionElement>
         <extensionValue>WNET.org</extensionValue>
         <extensionAuthorityUsed>http://www.loc.gov/standards/rights/METSRights.xsd</extensionAuthorityUsed>
       </extensionWrap>
     </pbcoreExtension>"
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements wrap: PBCore::Extension::Wrap
    end
  end
end
