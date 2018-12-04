require 'spec_helper'

RSpec.describe PBCore::Instantiation::Location do
  subject { described_class.new }
  let(:xml) do
    '<instantiationLocation>drive2/sourcefiles/20070910/458.wmv</instantiationLocation>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "drive2/sourcefiles/20070910/458.wmv"
    end
  end
end
