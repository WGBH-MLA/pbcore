require 'spec_helper'

RSpec.describe PBCore::AssetDate do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreAssetDate>2001-02-03T09:30:01</pbcoreAssetDate>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has a value' do
      expect(subject).to have_parsed_xml_value "2001-02-03T09:30:01"
    end
  end
end
