require 'spec_helper'
require 'equivalent-xml'

RSpec.describe PBCore::Instantiation::EssenceTrack do
  let(:subject) { described_class.new }
  let(:xml) do
    '<instantiationEssenceTrack>
       <essenceTrackType>Video</essenceTrackType>
       <essenceTrackIdentifier source="Digital Asset Management System">898_Laura.wav</essenceTrackIdentifier>
       <essenceTrackStandard source="PBCore essenceTrack/video" ref="http://pbcore.org/vocabularies/essenceTrackStandard/video%23ntsc">NTSC</essenceTrackStandard>
       <essenceTrackEncoding source="PBCore essenceTrackEncoding" ref="http://metadataregistry.org/concept/show/id/2889.html">H.264/MPEG-4 AVC: QuickTime H.264</essenceTrackEncoding>
       <essenceTrackDataRate unitsOfMeasure="kbps" annotation="compressed">1700</essenceTrackDataRate>
       <essenceTrackFrameRate unitsOfMeasure="fps" annotation="interlaced">29.97</essenceTrackFrameRate>
       <essenceTrackPlaybackSpeed unitsOfMeasure="rpm">78</essenceTrackPlaybackSpeed>
       <essenceTrackSamplingRate unitsOfMeasure="kHz">44.1</essenceTrackSamplingRate>
       <essenceTrackBitDepth unitsOfMeasure="foo" annotation="color">10</essenceTrackBitDepth>
       <essenceTrackAspectRatio unitsOfMeasure="foo" source="PBCore essenceTrackAspectRatio" ref="http://metadataregistry.org/conceptprop/list/concept_id/1439.html">4:3 (16:9 letterbox)</essenceTrackAspectRatio>
       <essenceTrackDuration>00:56:22:13</essenceTrackDuration>
       <essenceTrackAnnotation annotationType="Condition note">Audio reel shows faint signs of mold</essenceTrackAnnotation>
       <essenceTrackFrameSize unitsOfMeasure="pixels" source="PBCore essenceTrackFrameSize" ref="http://metadataregistry.org/conceptprop/list/concept_id/1461.html" annotation="full screen">720x480</essenceTrackFrameSize>
       <essenceTrackLanguage source="IS0 639.2" ref="http://id.loc.gov/vocabulary/iso639-2/eng">eng</essenceTrackLanguage>
       <essenceTrackTimeStart>00:00:32:05</essenceTrackTimeStart>
     </instantiationEssenceTrack>'
  end

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has child elements' do
      expect(subject).to have_parsed_xml_child_elements type: PBCore::Instantiation::EssenceTrack::Type,
                                                        identifiers: PBCore::Instantiation::EssenceTrack::Identifier,
                                                        standard: PBCore::Instantiation::EssenceTrack::Standard,
                                                        encoding: PBCore::Instantiation::EssenceTrack::Encoding,
                                                        duration: PBCore::Instantiation::EssenceTrack::Duration,
                                                        data_rate: PBCore::Instantiation::EssenceTrack::DataRate,
                                                        frame_rate: PBCore::Instantiation::EssenceTrack::FrameRate,
                                                        playback_speed: PBCore::Instantiation::EssenceTrack::PlaybackSpeed,
                                                        sampling_rate: PBCore::Instantiation::EssenceTrack::SamplingRate
    end

    describe '.to_xml' do
      it 'outputs the XML equivalent to what was parsed' do
        expect(subject.to_xml).to be_equivalent_to xml
      end
    end
  end
end
