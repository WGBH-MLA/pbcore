require 'pbcore/element'

module PBCore
  class Publisher::Role < Element
    element :publisherRole, as: :value

    build_xml do |xml|
      xml.publisherRole(value, xml_attributes_hash.compact)
    end
  end
end
