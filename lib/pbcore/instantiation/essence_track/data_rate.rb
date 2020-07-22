module PBCore
  class Instantiation::EssenceTrack::DataRate < ContentElement
    element :essenceTrackDataRate, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackDataRate(value, xml_attributes.compact)
    end
  end
end
