require 'spec_helper'

RSpec.describe PBCore::Creator::Creator do
  subject { described_class.new }

  let(:xml) do
    '<creator>God</creator>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "God"
    end
  end
end
