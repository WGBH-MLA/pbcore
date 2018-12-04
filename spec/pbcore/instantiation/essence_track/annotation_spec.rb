require 'spec_helper'

RSpec.describe PBCore::Instantiation::EssenceTrack::Annotation do
  subject { described_class.new }
  let(:xml) do
    '<essenceTrackAnnotation annotationType="Condition note">
       Audio reel shows faint signs of mold
     </essenceTrackAnnotation>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values type: "Condition note"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Audio reel shows faint signs of mold"
    end
  end
end
