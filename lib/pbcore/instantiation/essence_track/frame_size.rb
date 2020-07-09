module PBCore
  class Instantiation::EssenceTrack::FrameSize < Element
    element :essenceTrackFrameSize, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackFrameSize(value, xml_attributes.compact)
    end
  end
end
