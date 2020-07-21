require 'pbcore/element'

module PBCore
  class Instantiation::EssenceTrack < Element
    autoload :Type,           'pbcore/instantiation/essence_track/type'
    autoload :Identifier,     'pbcore/instantiation/essence_track/identifier'
    autoload :Standard,       'pbcore/instantiation/essence_track/standard'
    autoload :Encoding,       'pbcore/instantiation/essence_track/encoding'
    autoload :DataRate,       'pbcore/instantiation/essence_track/data_rate'
    autoload :FrameRate,      'pbcore/instantiation/essence_track/frame_rate'
    autoload :PlaybackSpeed,  'pbcore/instantiation/essence_track/playback_speed'
    autoload :SamplingRate,   'pbcore/instantiation/essence_track/sampling_rate'
    autoload :BitDepth,       'pbcore/instantiation/essence_track/bit_depth'
    autoload :FrameSize,      'pbcore/instantiation/essence_track/frame_size'
    autoload :Duration,       'pbcore/instantiation/essence_track/duration'
    autoload :AspectRatio,    'pbcore/instantiation/essence_track/aspect_ratio'
    autoload :TimeStart,      'pbcore/instantiation/essence_track/time_start'
    autoload :Language,       'pbcore/instantiation/essence_track/language'
    autoload :Annotation,     'pbcore/instantiation/essence_track/annotation'

    element  :instantiationEssenceTrack, as: :value
    element  :essenceTrackType, as: :type, class: PBCore::Instantiation::EssenceTrack::Type
    elements :essenceTrackIdentifier, as: :identifiers, class: PBCore::Instantiation::EssenceTrack::Identifier
    element  :essenceTrackStandard, as: :standard, class: PBCore::Instantiation::EssenceTrack::Standard
    element  :essenceTrackEncoding, as: :encoding, class: PBCore::Instantiation::EssenceTrack::Encoding
    element  :essenceTrackDataRate, as: :data_rate, class: PBCore::Instantiation::EssenceTrack::DataRate
    element  :essenceTrackFrameRate, as: :frame_rate, class: PBCore::Instantiation::EssenceTrack::FrameRate
    element  :essenceTrackPlaybackSpeed, as: :playback_speed, class: PBCore::Instantiation::EssenceTrack::PlaybackSpeed
    element  :essenceTrackSamplingRate, as: :sampling_rate, class: PBCore::Instantiation::EssenceTrack::SamplingRate
    element  :essenceTrackBitDepth, as: :bit_depth, class: PBCore::Instantiation::EssenceTrack::BitDepth
    element  :essenceTrackFrameSize, as: :frame_size, class: PBCore::Instantiation::EssenceTrack::FrameSize
    element  :essenceTrackDuration, as: :duration, class: PBCore::Instantiation::EssenceTrack::Duration
    element  :essenceTrackAspectRatio, as: :aspect_ratio, class: PBCore::Instantiation::EssenceTrack::AspectRatio
    element  :essenceTrackTimeStart, as: :time_start, class: PBCore::Instantiation::EssenceTrack::TimeStart
    elements :essenceTrackLanguage, as: :languages, class: PBCore::Instantiation::EssenceTrack::Language
    elements :essenceTrackAnnotation, as: :annotations, class: PBCore::Instantiation::EssenceTrack::Annotation

    build_xml do |xml|
      xml.instantiationEssenceTrack(xml_attributes.compact) do |xml|
        type.build(xml) if type
        identifiers.each { |identifier| identifier.build(xml) }
        standard.build(xml) if standard
        encoding.build(xml) if encoding
        data_rate.build(xml) if data_rate
        frame_rate.build(xml) if frame_rate
        playback_speed.build(xml) if playback_speed
        sampling_rate.build(xml) if sampling_rate
        bit_depth.build(xml) if bit_depth
        frame_size.build(xml) if frame_size
        aspect_ratio.build(xml) if aspect_ratio
        time_start.build(xml) if time_start
        duration.build(xml) if duration
        languages.each { |language| language.build(xml) }
        annotations.each { |annotation| annotation.build(xml) }
        # TODO: no essen extension!?!
      end
    end
  end
end
