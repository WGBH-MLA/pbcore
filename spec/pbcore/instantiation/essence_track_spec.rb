require 'spec_helper'
require 'equivalent-xml'

RSpec.describe PBCore::Instantiation::EssenceTrack do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }

    it { is_expected.to have_sax_machine_top_level_element :essenceTrackType, as: :type, class: PBCore::Instantiation::EssenceTrack::Type }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackStandard, as: :standard, class: PBCore::Instantiation::EssenceTrack::Standard }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackEncoding, as: :encoding, class: PBCore::Instantiation::EssenceTrack::Encoding }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackDataRate, as: :data_rate, class: PBCore::Instantiation::EssenceTrack::DataRate }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackFrameRate, as: :frame_rate, class: PBCore::Instantiation::EssenceTrack::FrameRate }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackPlaybackSpeed, as: :playback_speed, class: PBCore::Instantiation::EssenceTrack::PlaybackSpeed }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackSamplingRate, as: :sampling_rate, class: PBCore::Instantiation::EssenceTrack::SamplingRate }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackBitDepth, as: :bit_depth, class: PBCore::Instantiation::EssenceTrack::BitDepth }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackFrameSize, as: :frame_size, class: PBCore::Instantiation::EssenceTrack::FrameSize }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackDuration, as: :duration, class: PBCore::Instantiation::EssenceTrack::Duration }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackAspectRatio, as: :aspect_ratio, class: PBCore::Instantiation::EssenceTrack::AspectRatio }
    it { is_expected.to have_sax_machine_top_level_element :essenceTrackTimeStart, as: :time_start, class: PBCore::Instantiation::EssenceTrack::TimeStart }
    it { is_expected.to have_sax_machine_collection_element :essenceTrackIdentifier, as: :identifiers, class: PBCore::Instantiation::EssenceTrack::Identifier }
    it { is_expected.to have_sax_machine_collection_element :essenceTrackLanguage, as: :languages, class: PBCore::Instantiation::EssenceTrack::Language }
    it { is_expected.to have_sax_machine_collection_element :essenceTrackAnnotation, as: :annotations, class: PBCore::Instantiation::EssenceTrack::Annotation }
  end
end
