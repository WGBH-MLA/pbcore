require 'spec_helper'
require 'pbcore/description_document'
require 'equivalent-xml'

RSpec.describe PBCore::DescriptionDocument do
  let(:pbcore_xml) { fixture('description_document.xml').read }
  let(:description_document) { described_class.parse(pbcore_xml) }

  describe '.parse' do
    it 'parses a pbcoreDescriptionDocument' do
      expect(description_document.identifiers.first.value).to eq 'AMEX000102'
      expect(description_document.identifiers.first.source).to eq 'NOLA Code'
      expect(description_document.titles.first.title_type).to eq 'Full'
      expect(description_document.descriptions.first.value[0..33]).to eq 'In July 1946, the U.S. Navy staged'
    end
  end

  describe '.to_xml' do
    it 'outputs the XML equivalent to what was parsed' do
      expect(description_document.to_xml).to be_equivalent_to pbcore_xml
    end
  end
end
