require 'pbcore/element'

module PBCore
  class Relation::Type < Element
    element :pbcoreRelationType, as: :value

    build_xml do |xml|
      xml.pbcoreRelationType(value, xml_attributes_hash.compact)
    end
  end
end