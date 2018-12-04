require 'spec_helper'

RSpec.describe PBCore::Instantiation::AlternativeModes do
  subject { described_class.new }
  let(:xml) do
    '<instantiationAlternativeModes>SAP in English</instantiationAlternativeModes>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "SAP in English"
    end
  end
end
