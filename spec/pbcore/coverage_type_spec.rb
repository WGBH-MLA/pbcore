require 'spec_helper'

RSpec.describe PBCore::Coverage::Type do
  subject { described_class.new }

  let(:xml) do
    '<coverageType source="PBCore coverageType" ref="http://pbcore.org/vocabularies/coverageType#spatial">
       Spatial
     </coverageType>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Spatial"
    end

    it 'has parsed attributes' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore coverageType",
                                                          ref: "http://pbcore.org/vocabularies/coverageType#spatial"
    end
  end
end
