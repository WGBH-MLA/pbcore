module PBCore
  class Instantiation::EssenceTrack::Identifier < Element
    element :essenceTrackIdentifier, as: :value

    build_xml do |xml|
      xml.essenceTrackIdentifier(value, xml_attributes_hash.compact)
    end
  end
end