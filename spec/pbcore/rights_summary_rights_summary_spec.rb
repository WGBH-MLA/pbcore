require 'spec_helper'

RSpec.describe PBCore::RightsSummary::RightsSummary do
  subject { described_class.new }

  let(:xml) do
    '<rightsSummary source="Creative Commons"
                    ref="http://creativecommons.org/licenses/by/3.0" version="3.0">
       CC BY 3.0
     </rightsSummary>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }
    it 'has parsed value' do
      expect(subject).to have_parsed_xml_value "CC BY 3.0"
    end

    it 'has parsed attributes' do
      expect(subject).to have_parsed_xml_attribute_values source: "Creative Commons",
                                                          ref: "http://creativecommons.org/licenses/by/3.0",
                                                          version: "3.0"
    end
  end
end
