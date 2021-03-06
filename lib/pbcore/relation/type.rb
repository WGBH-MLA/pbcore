require 'pbcore/element'

module PBCore
  class Relation::Type < ContentElement
    element :pbcoreRelationType, as: :value

    build_xml do |xml|
      xml.pbcoreRelationType(value, xml_attributes.compact)
    end
  end
end
