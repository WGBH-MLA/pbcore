require 'spec_helper'
require 'equivalent-xml'

RSpec.describe PBCore::DescriptionDocument do
  it_behaves_like "PBCore Element"

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreIdentifier',
                                                            as: :identifiers,
                                                            class: PBCore::Identifier }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreTitle',
                                                            as: :titles,
                                                            class: PBCore::Title }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreDescription',
                                                            as: :descriptions,
                                                            class: PBCore::Description }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreAssetType',
                                                            as: :asset_types,
                                                            class: PBCore::AssetType }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreAssetDate',
                                                            as: :asset_dates,
                                                            class: PBCore::AssetDate }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreSubject',
                                                            as: :subjects,
                                                            class: PBCore::Subject }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreGenre',
                                                            as: :genres,
                                                            class: PBCore::Genre }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreRelation',
                                                            as: :relations,
                                                            class: PBCore::Relation }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreCoverage',
                                                            as: :coverages,
                                                            class: PBCore::Coverage }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreAudienceLevel',
                                                            as: :audience_levels,
                                                            class: PBCore::AudienceLevel }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreAudienceRating',
                                                            as: :audience_ratings,
                                                            class: PBCore::AudienceRating }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreCreator',
                                                            as: :creators,
                                                            class: PBCore::Creator }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreContributor',
                                                            as: :contributors,
                                                            class: PBCore::Contributor }
    it { is_expected.to have_sax_machine_collection_element 'pbcorePublisher',
                                                            as: :publishers,
                                                            class: PBCore::Publisher }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreRightsSummary',
                                                            as: :rights_summaries,
                                                            class: PBCore::RightsSummary }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreAnnotation',
                                                            as: :annotations,
                                                            class: PBCore::Annotation }
    it { is_expected.to have_sax_machine_collection_element 'pbcoreExtension',
                                                            as: :extensions,
                                                            class: PBCore::Extension }
  end

  context 'with a "complete" instance' do
    let(:complete_xml) { build(:pbcore_description_document).to_xml }
    it 'validates with the PBCore schema definition' do

      # debug, remove
      begin
        PBCore.validate(complete_xml)
      rescue => e
        puts e.message
        puts "PBCore XML = \n#{complete_xml}"
        exit 1
      end

      expect { PBCore.validate(complete_xml) }.not_to raise_error
    end
  end
end
