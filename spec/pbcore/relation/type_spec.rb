require 'spec_helper'

RSpec.describe PBCore::Relation::Type do
  subject { described_class.new }

  let(:xml) do
    '<pbcoreRelationType>Is Part Of</pbcoreRelationType>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Is Part Of"
    end
  end
end
