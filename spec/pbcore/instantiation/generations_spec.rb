require 'spec_helper'

RSpec.describe PBCore::Instantiation::Generations do
  subject { described_class.new }
  let(:xml) do
    '<instantiationGenerations source="PBCore instantiationGenerations"
                               ref="http://metadataregistry.org/concept/show/id/2372.html">
       Sound effects
     </instantiationGenerations>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore instantiationGenerations",
                                                          ref: "http://metadataregistry.org/concept/show/id/2372.html"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Sound effects"
    end
  end
end
