require 'spec_helper'

RSpec.describe PBCore::Title do
  subject { described_class.new }

  let(:value) { 'fake title' }
  let(:attributes) do
    {
      source: 'fake-source',
      ref: 'fake-ref',
      annotation: 'fake-annotation',
      version: 'fake-version',
      type: 'Series',
      type_source: 'fake-type-source',
      type_ref: 'fake-type-ref',
      type_annotation: 'fake-type-anno'
    }
  end
  let(:xml) do
    "<pbcoreTitle source='#{attributes[:source]}'
                  ref='#{attributes[:ref]}'
                  annotation='#{attributes[:annotation]}'
                  version='#{attributes[:version]}'
                  titleType='#{attributes[:type]}'
                  titleTypeSource='#{attributes[:type_source]}'
                  titleTypeRef='#{attributes[:type_ref]}'
                  titleTypeAnnotation='#{attributes[:type_annotation]}'
                  >
       #{value}
    </pbcoreTitle>"
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values attributes
      # attributes.each do |attr_name, attr_val|
      #   expect(subject.send(attr_name)).to eq attr_value
      # end
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value value
    end
  end
end
