require 'spec_helper'

RSpec.describe PBCore::Instantiation::Relation::Identifier do
  subject { described_class.new }
  let(:xml) do
    '<instantiationRelationIdentifier>Barcode238898</instantiationRelationIdentifier>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Barcode238898"
    end
  end
end
