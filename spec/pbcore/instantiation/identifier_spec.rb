require 'spec_helper'

RSpec.describe PBCore::Instantiation::Identifier do
  subject { described_class.new }
  let(:xml) do
    '<instantiationIdentifier source="WGBH BARCODE">0000313536</instantiationIdentifier>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "WGBH BARCODE"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "0000313536"
    end
  end
end
