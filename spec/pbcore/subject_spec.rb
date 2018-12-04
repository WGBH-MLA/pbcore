require 'spec_helper'

RSpec.describe PBCore::Subject do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreSubject subjectType="entity" source="Library of Congress Name Authority">
       Smith, John, 1580-1631
     </pbcoreSubject>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values type: "entity",
                                                          source: "Library of Congress Name Authority"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "Smith, John, 1580-1631"
    end
  end
end
