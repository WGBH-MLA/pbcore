module PBCore
  class Instantiation::EssenceTrack::SamplingRate < Element
    element :essenceTrackSamplingRate, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.essenceTrackSamplingRate(value, xml_attributes_hash.compact)
    end
  end
end
