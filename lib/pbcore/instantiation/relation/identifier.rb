module PBCore
  class Instantiation::Relation::Identifier < ContentElement
    element :instantiationRelationIdentifier, as: :value

    build_xml do |xml|
      xml.instantiationRelationIdentifier(value, xml_attributes.compact)
    end
  end
end
