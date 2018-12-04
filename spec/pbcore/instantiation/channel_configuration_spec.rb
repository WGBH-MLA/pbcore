require 'spec_helper'

RSpec.describe PBCore::Instantiation::ChannelConfiguration do
  subject { described_class.new }
  let(:xml) do
    '<instantiationChannelConfiguration>8-track stereo</instantiationChannelConfiguration>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "8-track stereo"
    end
  end
end
