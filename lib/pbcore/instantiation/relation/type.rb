module PBCore
  class Instantiation::Relation::Type < Element
    element :instantiationRelationType, as: :value

    build_xml do |xml|
      xml.instantiationRelationType(value, xml_attributes_hash.compact)
    end
  end
end
