module PBCore
  class Instantiation::EssenceTrack::PlaybackSpeed < ContentElement
    element :essenceTrackPlaybackSpeed, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackPlaybackSpeed(value, xml_attributes.compact)
    end
  end
end
