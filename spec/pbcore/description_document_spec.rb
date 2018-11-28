require 'spec_helper'
require 'pbcore/description_document'

RSpec.describe PBCore::DescriptionDocument do
  describe '.parse' do
    let(:pbcore_xml) { fixture('description_document.xml').read }
    let(:description_document) { described_class.parse(pbcore_xml) }
    it 'parses a pbcoreDescriptionDocument' do
      expect(description_document.identifiers.first.value).to eq 'MCU_a0567'
      expect(description_document.identifiers.first.source).to eq 'MCU'
    end

    xit 'outputs the original XML' do
      expect(description_document.to_xml).to eq pbcore_xml
    end
  end
end
