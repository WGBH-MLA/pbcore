module PBCore
  class Instantiation::EssenceTrack::DataRate < Element
    element :essenceTrackDataRate, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackDataRate(value, xml_attributes_hash.compact)
    end
  end
end
