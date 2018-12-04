module PBCore
  class Instantiation::EssenceTrack::Encoding < Element
    element :essenceTrackEncoding, as: :value

    build_xml do |xml|
      xml.essenceTrackEncoding(value, xml_attributes_hash.compact)
    end
  end
end
