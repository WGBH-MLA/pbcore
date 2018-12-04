require 'spec_helper'

RSpec.describe PBCore::Publisher::Role do
  subject { described_class.new }

  let(:xml) do
    '<publisherRole>Distributor</publisherRole>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Distributor"
    end
  end
end
