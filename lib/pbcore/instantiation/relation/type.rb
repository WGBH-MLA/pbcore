module PBCore
  class Instantiation::Relation::Type < ContentElement
    element :instantiationRelationType, as: :value

    build_xml do |xml|
      xml.instantiationRelationType(value, xml_attributes.compact)
    end
  end
end
