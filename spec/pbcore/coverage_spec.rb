require 'spec_helper'

RSpec.describe PBCore::Coverage do
  subject { described_class.new }

  let(:xml) do
    '<pbcoreCoverage>
       <coverage source="latitude, longitude">
         37.2000,-76.7667
       </coverage>
       <coverageType source="PBCore coverageType" ref="http://pbcore.org/vocabularies/coverageType#spatial">
         Spatial
       </coverageType>
     </pbcoreCoverage>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements coverage: PBCore::Coverage::Coverage,
                                                        type: PBCore::Coverage::Type
    end

    it 'parses the child element values and attributes' do
      expect(subject.coverage).to have_parsed_xml_value "37.2000,-76.7667"
      expect(subject.coverage).to have_parsed_xml_attribute_values source: "latitude, longitude"
      expect(subject.type).to have_parsed_xml_value "Spatial"
      expect(subject.type).to have_parsed_xml_attribute_values source: "PBCore coverageType",
                                                               ref: "http://pbcore.org/vocabularies/coverageType#spatial"
    end
  end
end
