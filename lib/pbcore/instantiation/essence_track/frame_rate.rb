module PBCore
  class Instantiation::EssenceTrack::FrameRate < Element
    element :essenceTrackFrameRate, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackFrameRate(value, xml_attributes.compact)
    end
  end
end
