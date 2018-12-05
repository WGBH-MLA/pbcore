require 'spec_helper'

RSpec.describe PBCore::Extension::Wrap do
  subject { described_class.new }

  let(:xml) do
    "<extensionWrap>
       <extensionElement>RightsHolderName</extensionElement>
       <extensionValue>WNET.org</extensionValue>
       <extensionAuthorityUsed>http://www.loc.gov/standards/rights/METSRights.xsd</extensionAuthorityUsed
     </extensionWrap>"
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements element: PBCore::Extension::Wrap::Element,
                                                        value: PBCore::Extension::Wrap::Value,
                                                        authority_used: PBCore::Extension::Wrap::AuthorityUsed
    end
  end
end
