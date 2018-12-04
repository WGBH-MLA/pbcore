require 'spec_helper'

RSpec.describe PBCore::Publisher do
  subject { described_class.new }

  let(:xml) do
    '<pbcorePublisher>
       <publisher>Public Broadcasting Service</publisher>
       <publisherRole>Distributor</publisherRole>
     </pbcorePublisher>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements publisher: PBCore::Publisher::Publisher,
                                                        role: PBCore::Publisher::Role
    end
  end
end
