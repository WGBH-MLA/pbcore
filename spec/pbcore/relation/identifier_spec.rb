require 'spec_helper'

RSpec.describe PBCore::Relation::Identifier do
  subject { described_class.new }

  let(:xml) do
    '<pbcoreRelationIdentifier>NOVA</pbcoreRelationIdentifier>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "NOVA"
    end
  end
end