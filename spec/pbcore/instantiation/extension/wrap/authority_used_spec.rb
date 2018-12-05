require 'spec_helper'

RSpec.describe PBCore::Instantiation::Extension::Wrap::AuthorityUsed do
  subject { described_class.new }
  let(:xml) do
    '<extensionAuthorityUsed>http://www.loc.gov/standards/rights/METSRights.xsd</extensionAuthorityUsed>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "http://www.loc.gov/standards/rights/METSRights.xsd"
    end
  end
end
