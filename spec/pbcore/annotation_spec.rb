require 'spec_helper'

RSpec.describe PBCore::Annotation do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreAnnotation annotationType="foo">Voiceover replaced 20020302.</pbcoreAnnotation>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values type: "foo"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Voiceover replaced 20020302."
    end
  end
end
