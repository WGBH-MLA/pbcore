require 'spec_helper'

RSpec.describe PBCore::Instantiation::Extension::Wrap::Value do
  subject { described_class.new }
  let(:xml) { '<extensionValue>WNET.org</extensionValue>' }

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "WNET.org"
    end
  end
end
