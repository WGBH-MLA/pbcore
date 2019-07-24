module PBCore
  class Instantiation::EssenceTrack::Standard < Element
    element :essenceTrackStandard, as: :value

    build_xml do |xml|
      xml.essenceTrackStandard(value, xml_attributes.compact)
    end
  end
end
