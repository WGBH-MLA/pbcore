require 'spec_helper'

RSpec.describe PBCore::Instantiation::Digital do
  subject { described_class.new }
  let(:xml) do
    '<instantiationDigital source="IANA MIME Media types"
                           ref="http://www.iana.org/assignments/media-types/video/">
       H264
     </instantiationDigital>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "IANA MIME Media types",
                                                          ref: "http://www.iana.org/assignments/media-types/video/"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "H264"
    end
  end
end
