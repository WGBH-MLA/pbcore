require 'pbcore/element'

module PBCore
  class Relation < Element
    autoload :Type,        'pbcore/relation/type'
    autoload :Identifier,  'pbcore/relation/identifier'

    element :pbcoreRelation, as: :value
    element :pbcoreRelationType, as: :type, class: PBCore::Relation::Type
    element :pbcoreRelationIdentifier, as: :identifier, class: PBCore::Relation::Identifier

    build_xml do |xml|
      xml.pbcoreRelation(xml_attributes.compact) do |xml|
        type.build(xml) if type
        identifier.build(xml) if identifier
      end
    end
  end
end
