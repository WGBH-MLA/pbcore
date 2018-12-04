require 'spec_helper'

RSpec.describe PBCore::RightsSummary do
  subject { described_class.new }

  let(:xml) do
    '<pbcoreRightsSummary>
       <rightsSummary source="Creative Commons"
                      ref="http://creativecommons.org/licenses/by/3.0" version="3.0">
         CC BY 3.0
       </rightsSummary>
       <rightsLink>www.rightsinfo.com</rightsLink>
     </pbcoreRightsSummary>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed child elements' do
      expect(subject).to have_parsed_xml_child_elements rights_summary: PBCore::RightsSummary::RightsSummary,
                                                        rights_link: PBCore::RightsSummary::RightsLink
    end
  end
end
