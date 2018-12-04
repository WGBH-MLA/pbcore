require 'pbcore/element'

module PBCore
  class Relation::Identifier < Element
    element :pbcoreRelationIdentifier, as: :value

    build_xml do |xml|
      xml.pbcoreRelationIdentifier(value, xml_attributes_hash.compact)
    end
  end
end
