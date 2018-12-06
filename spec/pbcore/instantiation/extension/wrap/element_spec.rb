require 'spec_helper'

RSpec.describe PBCore::Instantiation::Extension::Wrap::Element do
  subject { described_class.new }
  let(:xml) do
    '<extensionElement>RightsHolderName</extensionElement>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "RightsHolderName"
    end
  end
end
