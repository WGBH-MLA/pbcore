require 'pbcore/element'

module PBCore
  class Instantiation::Rights::Link < Element
    element :rightsLink, as: :value

    build_xml do |xml|
      xml.rightsLink(value, xml_attributes.compact)
    end
  end
end
