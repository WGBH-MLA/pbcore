module PBCore
  class Instantiation::EssenceTrack::AspectRatio < Element
    element :essenceTrackAspectRatio, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackAspectRatio(value, xml_attributes.compact)
    end
  end
end
