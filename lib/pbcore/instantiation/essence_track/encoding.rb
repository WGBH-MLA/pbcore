module PBCore
  class Instantiation::EssenceTrack::Encoding < ContentElement
    element :essenceTrackEncoding, as: :value

    build_xml do |xml|
      xml.essenceTrackEncoding(value, xml_attributes.compact)
    end
  end
end
