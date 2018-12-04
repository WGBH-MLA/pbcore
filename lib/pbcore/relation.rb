require 'pbcore/element'

module PBCore
  class Relation < Element
    autoload :Type,        'pbcore/relation/type'
    autoload :Identifier,  'pbcore/relation/identifier'

    element :pbcoreRelationType, as: :type, class: PBCore::Relation::Type
    element :pbcoreRelationIdentifier, as: :identifier, class: PBCore::Relation::Identifier

    build_xml do |xml|
      xml.pbcoreRelation(xml_attributes_hash.compact) do |xml|
        type.build(xml)
        identifier.build(xml)
      end
    end
  end
end
