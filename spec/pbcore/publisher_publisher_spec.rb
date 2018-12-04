require 'spec_helper'

RSpec.describe PBCore::Publisher::Publisher do
  subject { described_class.new }

  let(:xml) do
    '<publisher>Public Broadcasting Service</publisher>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Public Broadcasting Service"
    end
  end
end
