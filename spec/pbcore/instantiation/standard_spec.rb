require 'spec_helper'

RSpec.describe PBCore::Instantiation::Standard do
  subject { described_class.new }
  let(:xml) do
    '<instantiationStandard source="PBCore instantiationStandard/video"
                            ref="http://pbcore.org/vocabularies/instantiationStandard/video%23ntsc"
                            profile="Op1a">
       NTSC
     </instantiationStandard>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "PBCore instantiationStandard/video",
                                                          ref: "http://pbcore.org/vocabularies/instantiationStandard/video%23ntsc",
                                                          profile: "Op1a"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "NTSC"
    end
  end
end
