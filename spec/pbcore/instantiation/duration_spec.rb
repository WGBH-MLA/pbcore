require 'spec_helper'

RSpec.describe PBCore::Instantiation::Duration do
  subject { described_class.new }
  let(:xml) do
    '<instantiationDuration>00:56:46</instantiationDuration>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "00:56:46"
    end
  end
end
