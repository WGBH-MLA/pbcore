require 'spec_helper'

RSpec.describe PBCore::Instantiation::TimeStart do
  subject { described_class.new }
  let(:xml) do
    '<instantiationTimeStart>00:23:30:15</instantiationTimeStart>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "00:23:30:15"
    end
  end
end
