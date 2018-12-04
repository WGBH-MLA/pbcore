module PBCore
  class Instantiation::Relation::Identifier < Element
    element :instantiationRelationIdentifier, as: :value

    build_xml do |xml|
      xml.instantiationRelationIdentifier(value, xml_attributes_hash.compact)
    end
  end
end