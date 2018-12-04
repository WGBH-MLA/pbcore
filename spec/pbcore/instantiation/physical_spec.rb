require 'spec_helper'

RSpec.describe PBCore::Instantiation::Physical do
  subject { described_class.new }
  let(:xml) do
    '<instantiationPhysical>Shellac disc</instantiationPhysical>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Shellac disc"
    end
  end
end
