module PBCore
  class Instantiation::EssenceTrack::Annotation < Element
    element :essenceTrackAnnotation, as: :value

    attribute :annotationType, as: :type

    build_xml do |xml|
      xml.essenceTrackAnnotation(value, xml_attributes_hash.compact)
    end
  end
end