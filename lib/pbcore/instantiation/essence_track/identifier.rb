module PBCore
  class Instantiation::EssenceTrack::Identifier < ContentElement
    element :essenceTrackIdentifier, as: :value

    build_xml do |xml|
      xml.essenceTrackIdentifier(value, xml_attributes.compact)
    end
  end
end
