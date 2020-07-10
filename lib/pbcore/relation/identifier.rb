require 'pbcore/element'

module PBCore
  class Relation::Identifier < ContentElement
    element :pbcoreRelationIdentifier, as: :value

    build_xml do |xml|
      xml.pbcoreRelationIdentifier(value, xml_attributes.compact)
    end
  end
end
