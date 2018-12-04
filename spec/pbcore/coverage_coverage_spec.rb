require 'spec_helper'

RSpec.describe PBCore::Coverage::Coverage do
  subject { described_class.new }

  let(:xml) do
    '<coverage source="latitude, longitude">
       37.2000,-76.7667
     </coverage>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "37.2000,-76.7667"
    end
  end
end
