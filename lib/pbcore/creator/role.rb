require 'pbcore/element'

module PBCore
  class Creator::Role < Element
    element :creatorRole, as: :value

    build_xml do |xml|
      xml.creatorRole(value, xml_attributes_hash.compact)
    end
  end
end
