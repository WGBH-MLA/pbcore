require 'pbcore/element'

module PBCore
  class Instantiation < Element
    autoload :Identifier,           'pbcore/instantiation/identifier'
    autoload :Date,                 'pbcore/instantiation/date'
    autoload :Dimensions,           'pbcore/instantiation/dimensions'
    autoload :Physical,             'pbcore/instantiation/physical'
    autoload :Digital,              'pbcore/instantiation/digital'
    autoload :Standard,             'pbcore/instantiation/standard'
    autoload :Location,             'pbcore/instantiation/location'
    autoload :MediaType,            'pbcore/instantiation/media_type'
    autoload :Generations,          'pbcore/instantiation/generations'
    autoload :TimeStart,            'pbcore/instantiation/time_start'
    autoload :FileSize,             'pbcore/instantiation/file_size'
    autoload :Duration,             'pbcore/instantiation/duration'
    autoload :DataRate,             'pbcore/instantiation/data_rate'
    autoload :Colors,               'pbcore/instantiation/colors'
    autoload :Tracks,               'pbcore/instantiation/tracks'
    autoload :ChannelConfiguration, 'pbcore/instantiation/channel_configuration'
    autoload :Language,             'pbcore/instantiation/language'
    autoload :AlternativeModes,     'pbcore/instantiation/alternative_modes'
    autoload :EssenceTrack,         'pbcore/instantiation/essence_track'
    autoload :Extension,            'pbcore/instantiation/extension'
    autoload :Relation,             'pbcore/instantiation/relation'
    autoload :Rights,               'pbcore/instantiation/rights'
    autoload :Annotation,           'pbcore/instantiation/annotation'

    elements :instantiationIdentifier, as: :identifiers, class: PBCore::Instantiation::Identifier
    elements :instantiationDate, as: :dates, class: PBCore::Instantiation::Date
    elements :instantiationDimensions, as: :dimensions, class: PBCore::Instantiation::Dimensions
    element  :instantiationPhysical, as: :physical, class: PBCore::Instantiation::Physical
    element  :instantiationDigital, as: :digital, class: PBCore::Instantiation::Digital
    element  :instantiationStandard, as: :standard, class: PBCore::Instantiation::Standard
    element  :instantiationLocation, as: :location, class: PBCore::Instantiation::Location
    element  :instantiationMediaType, as: :media_type, class: PBCore::Instantiation::MediaType
    elements :instantiationGenerations, as: :generations, class: PBCore::Instantiation::Generations
    elements :instantiationTimeStart, as: :time_starts, class: PBCore::Instantiation::TimeStart
    element  :instantiationFileSize, as: :file_size, class: PBCore::Instantiation::FileSize
    element  :instantiationDuration, as: :duration, class: PBCore::Instantiation::Duration
    element  :instantiationDataRate, as: :data_rate, class: PBCore::Instantiation::DataRate
    element  :instantiationColors, as: :colors, class: PBCore::Instantiation::Colors
    element  :instantiationTracks, as: :tracks, class: PBCore::Instantiation::Tracks
    element  :instantiationChannelConfiguration, as: :channel_configuration, class: PBCore::Instantiation::ChannelConfiguration
    elements :instantiationLanguage, as: :languages, class: PBCore::Instantiation::Language
    element  :instantiationAlternativeModes, as: :alternative_modes, class: PBCore::Instantiation::AlternativeModes
    elements :instantiationEssenceTrack, as: :essence_tracks, class: PBCore::Instantiation::EssenceTrack
    elements :instantiationExtensions, as: :extensions, class: PBCore::Instantiation::Extension
    elements :instantiationRelation, as: :relations, class: PBCore::Instantiation::Relation
    elements :instantiationRights, as: :rights, class: PBCore::Instantiation::Rights
    elements :instantiationAnnotation, as: :annotations, class: PBCore::Instantiation::Annotation

    build_xml do |xml|
      xml.pbcoreInstantiation(xml_attributes_hash.compact) do |xml|
        identifiers.each { |identifier| identifier.build(xml) }
        dates.each { |date| date.build(xml) }
        dimensions.each { |dimensions_element| dimensions_element.build(xml) }
        physical.build(xml) if physical
        digital.build(xml) if digital
        standard.build(xml) if standard
        location.build(xml) if location
        media_type.build(xml) if media_type
        generations.each { |generations_element| generations_element.build(xml) }
        file_size.build(xml) if file_size
        time_starts.each { |time_start| time_start.build(xml) }
        duration.build(xml) if duration
        data_rate.build(xml) if data_rate
        colors.build(xml) if colors
        tracks.build(xml) if tracks
        channel_configuration.build(xml) if channel_configuration
        languages.each { |language| language.build(xml) }
        alternative_modes.build(xml) if alternative_modes
        essence_tracks.each { |essence_track| essence_track.build(xml) }
        # TODO: no instrelation?!!
        
        # ??? this seems to render correctly according to pbcore.org, but doesnt pass schema validation
        rights.each { |right| right.build(xml) }
        annotations.each { |annotation| annotation.build(xml) }
        # TODO: no instpart?!?
        extensions.each { |extension| extension.build(xml) }
      end
    end
  end
end
