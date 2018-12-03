require 'spec_helper'

RSpec.describe PBCore::AudienceRating do
  subject { described_class.new }
  let(:xml) do
    '<pbcoreAudienceRating source="MPAA Movie Ratings">G</pbcoreAudienceRating>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has attribute values' do
      expect(subject).to have_parsed_xml_attribute_values source: "MPAA Movie Ratings"
    end

    it 'has a value' do
      expect(subject).to have_parsed_xml_value "G"
    end
  end
end
