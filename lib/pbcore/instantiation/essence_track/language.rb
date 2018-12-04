module PBCore
  class Instantiation::EssenceTrack::Language < Element
    element :essenceTrackLanguage, as: :value

    build_xml do |xml|
      xml.essenceTrackLanguage(value, xml_attributes_hash.compact)
    end
  end
end
