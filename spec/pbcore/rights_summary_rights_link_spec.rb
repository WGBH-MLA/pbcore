require 'spec_helper'

RSpec.describe PBCore::RightsSummary::RightsLink do
  subject { described_class.new }

  let(:xml) do
    '<rightsLink>www.rightsinfo.com</rightsLink>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "www.rightsinfo.com"
    end
  end
end
