require 'spec_helper'

RSpec.describe PBCore::Contributor::Contributor do
  subject { described_class.new }

  let(:xml) do
    '<contributor affiliation="Yomega">Yo-Yo Ma</contributor>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Yo-Yo Ma"
    end

    it 'has parsed attributes' do
      expect(subject).to have_parsed_xml_attribute_values affiliation: "Yomega"
    end
  end
end
