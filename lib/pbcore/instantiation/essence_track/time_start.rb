module PBCore
  class Instantiation::EssenceTrack::TimeStart < Element
    element :essenceTrackTimeStart, as: :value

    build_xml do |xml|
      xml.essenceTrackTimeStart(value, xml_attributes_hash.compact)
    end
  end
end
