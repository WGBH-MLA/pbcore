require 'spec_helper'

RSpec.describe PBCore::Creator::Role do
  subject { described_class.new }

  let(:xml) do
    '<creatorRole>Almighty Diety</creatorRole>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "Almighty Diety"
    end
  end
end
