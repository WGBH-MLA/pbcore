require 'pbcore/element'

module PBCore
  class Publisher::Role < ContentElement
    element :publisherRole, as: :value

    build_xml do |xml|
      xml.publisherRole(value, xml_attributes.compact)
    end
  end
end
