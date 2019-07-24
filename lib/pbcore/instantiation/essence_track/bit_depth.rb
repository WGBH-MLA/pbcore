module PBCore
  class Instantiation::EssenceTrack::BitDepth < Element
    element :essenceTrackBitDepth, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackBitDepth(value, xml_attributes.compact)
    end
  end
end
