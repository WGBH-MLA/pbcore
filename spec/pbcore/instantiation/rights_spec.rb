require 'spec_helper'

RSpec.describe PBCore::Instantiation::Rights do
  subject { described_class.new }
  let(:xml) do
    '<instantiationRights startTime="00:00:10" endTime="00:10:00" timeAnnotation="annotating time">
      <rightsSummary>Donation agreement provides rights to give access to users on premises</rightsSummary>
      <rightsLink>www.therightsstuff.org</rightsLink>
    </instantiationRights>'
  end


  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values start_time: "00:00:10",
                                                          end_time: "00:10:00",
                                                          time_annotation: "annotating time"
    end

    it 'has child elements' do
      expect(subject).to have_parsed_xml_child_elements rights_summary: PBCore::RightsSummary::RightsSummary,
                                                        rights_link: PBCore::RightsSummary::RightsLink
    end
  end
end

