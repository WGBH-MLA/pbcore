require 'spec_helper'

RSpec.describe PBCore::AudienceLevel do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreAudienceLevel source="PBS Teachers" annotation="for educational use">K-2</pbcoreAudienceLevel>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBS Teachers",
                                                          annotation: "for educational use"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "K-2"
    end
  end
end
