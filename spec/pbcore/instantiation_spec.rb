require 'spec_helper'

RSpec.describe PBCore::Instantiation do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_collection_element :instantiationIdentifier, as: :identifiers, class: PBCore::Instantiation::Identifier }
    it { is_expected.to have_sax_machine_collection_element :instantiationDate, as: :dates, class: PBCore::Instantiation::Date }
    it { is_expected.to have_sax_machine_collection_element :instantiationDimensions, as: :dimensions, class: PBCore::Instantiation::Dimensions }
    it { is_expected.to have_sax_machine_top_level_element :instantiationPhysical, as: :physical, class: PBCore::Instantiation::Physical }
    it { is_expected.to have_sax_machine_top_level_element :instantiationDigital, as: :digital, class: PBCore::Instantiation::Digital }
    it { is_expected.to have_sax_machine_top_level_element :instantiationStandard, as: :standard, class: PBCore::Instantiation::Standard }
    it { is_expected.to have_sax_machine_top_level_element :instantiationLocation, as: :location, class: PBCore::Instantiation::Location }
    it { is_expected.to have_sax_machine_top_level_element :instantiationMediaType, as: :media_type, class: PBCore::Instantiation::MediaType }
    it { is_expected.to have_sax_machine_collection_element :instantiationGenerations, as: :generations, class: PBCore::Instantiation::Generations }
    it { is_expected.to have_sax_machine_collection_element :instantiationTimeStart, as: :time_starts, class: PBCore::Instantiation::TimeStart }
    it { is_expected.to have_sax_machine_top_level_element :instantiationFileSize, as: :file_size, class: PBCore::Instantiation::FileSize }
    it { is_expected.to have_sax_machine_top_level_element :instantiationDuration, as: :duration, class: PBCore::Instantiation::Duration }
    it { is_expected.to have_sax_machine_top_level_element :instantiationDataRate, as: :data_rate, class: PBCore::Instantiation::DataRate }
    it { is_expected.to have_sax_machine_top_level_element :instantiationColors, as: :colors, class: PBCore::Instantiation::Colors }
    it { is_expected.to have_sax_machine_top_level_element :instantiationTracks, as: :tracks, class: PBCore::Instantiation::Tracks }
    it { is_expected.to have_sax_machine_top_level_element :instantiationChannelConfiguration, as: :channel_configuration, class: PBCore::Instantiation::ChannelConfiguration }
    it { is_expected.to have_sax_machine_collection_element :instantiationLanguage, as: :languages, class: PBCore::Instantiation::Language }
    it { is_expected.to have_sax_machine_top_level_element :instantiationAlternativeModes, as: :alternative_modes, class: PBCore::Instantiation::AlternativeModes }
    it { is_expected.to have_sax_machine_collection_element :instantiationEssenceTrack, as: :essence_tracks, class: PBCore::Instantiation::EssenceTrack }
    it { is_expected.to have_sax_machine_collection_element :instantiationExtension, as: :extensions, class: PBCore::Instantiation::Extension }
    it { is_expected.to have_sax_machine_collection_element :instantiationRelation, as: :relations, class: PBCore::Instantiation::Relation }
    it { is_expected.to have_sax_machine_collection_element :instantiationRights, as: :rights, class: PBCore::Instantiation::Rights }
    it { is_expected.to have_sax_machine_collection_element :instantiationAnnotation, as: :annotations, class: PBCore::Instantiation::Annotation }
  end
end
