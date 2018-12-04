require 'spec_helper'
# require 'pbcore/description_document'
require 'equivalent-xml'

RSpec.describe PBCore::DescriptionDocument do
  let(:subject) { described_class.new }
  let(:xml) { fixture('description_document.xml').read }

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has child elements' do
      expect(subject).to have_parsed_xml_child_elements identifiers: PBCore::Identifier,
                                                        titles: PBCore::Title,
                                                        descriptions: PBCore::Description
    end

    describe '.to_xml' do
      it 'outputs the XML equivalent to what was parsed' do
        expect(subject.to_xml).to be_equivalent_to xml
      end
    end
  end
end
