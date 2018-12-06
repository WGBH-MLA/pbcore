require 'pbcore/element'

module PBCore
  class Instantiation::Relation < Element
    autoload :Type,        'pbcore/instantiation/relation/type'
    autoload :Identifier,  'pbcore/instantiation/relation/identifier'

    element :instantiationRelationType, as: :type, class: PBCore::Instantiation::Relation::Type
    element :instantiationRelationIdentifier, as: :identifier, class: PBCore::Instantiation::Relation::Identifier

    build_xml do |xml|
      xml.instantiationRelation(xml_attributes_hash.compact) do |xml|
        type.build(xml)
        identifier.build(xml)
      end
    end
  end
end
