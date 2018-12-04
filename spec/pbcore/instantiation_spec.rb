require 'spec_helper'

RSpec.describe PBCore::Instantiation do
  subject { described_class.new }
  let(:xml) do
    # TODO: use fixtures to test more complete and realistic <pbcoreInstantiation> elements
    '<pbcoreInstantiation>
       <instantiationIdentifier annotation="file name">news_20071211.mp3</instantiationIdentifier>
       <instantiationIdentifier source="WGBH BARCODE">0000313536</instantiationIdentifier>
       <instantiationDate dateType="Published">2007-07-02T18:10+02:24</instantiationDate>
       <instantiationDate dateType="Issued">2007-06-02</instantiationDate>
       <instantiationDimensions unitsofmeasure="pixels">100x200</instantiationDimensions>
       <instantiationDimensions unitsofmeasure="inches">5x7</instantiationDimensions>
       <instantiationPhysical>Shellac disc</instantiationPhysical>
       <instantiationDigital source="IANA MIME Media types" ref="http://www.iana.org/assignments/media-types/video/">H264</instantiationDigital>
     </pbcoreInstantiation>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has child elements' do
      expect(subject).to have_parsed_xml_child_elements identifiers: PBCore::Instantiation::Identifier
      expect(subject).to have_parsed_xml_child_elements dates: PBCore::Instantiation::Date
      expect(subject).to have_parsed_xml_child_elements dimensions: PBCore::Instantiation::Dimensions
      expect(subject).to have_parsed_xml_child_elements physical: PBCore::Instantiation::Physical
      expect(subject).to have_parsed_xml_child_elements digital: PBCore::Instantiation::Digital
    end
  end
end
