require 'spec_helper'

RSpec.describe PBCore::Identifier do
  subject { described_class.new }
  let(:attributes) { attributes_for :pbcore_identifier }
  let(:value) { "test identifier" }
  let(:xml) do
    "<pbcoreIdentifier source='#{attributes[:source]}'
                       ref='#{attributes[:ref]}'
                       annotation='#{attributes[:annotation]}'
                       version='#{attributes[:version]}'>
       #{value}
    </pbcoreIdentifier>"
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values attributes
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value value
    end
  end
end
