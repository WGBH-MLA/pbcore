require 'spec_helper'

RSpec.describe PBCore::Instantiation::Date do
  subject { described_class.new }
  let(:xml) do
    '<instantiationDate dateType="Published">2007-07-02T18:10+02:24</instantiationDate>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values type: "Published"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "2007-07-02T18:10+02:24"
    end
  end
end
