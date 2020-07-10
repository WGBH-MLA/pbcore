module PBCore
  class Instantiation::EssenceTrack::Type < ContentElement
    element :essenceTrackType, as: :value

    build_xml do |xml|
      xml.essenceTrackType(value, xml_attributes.compact)
    end
  end
end
