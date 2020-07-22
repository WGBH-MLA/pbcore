require 'pbcore/element'

module PBCore
  class Creator::Role < ContentElement
    element :creatorRole, as: :value

    build_xml do |xml|
      xml.creatorRole(value, xml_attributes.compact)
    end
  end
end
