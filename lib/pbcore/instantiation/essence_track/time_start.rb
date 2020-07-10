module PBCore
  class Instantiation::EssenceTrack::TimeStart < ContentElement
    element :essenceTrackTimeStart, as: :value

    build_xml do |xml|
      xml.essenceTrackTimeStart(value, xml_attributes.compact)
    end
  end
end
