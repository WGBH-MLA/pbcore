require 'pbcore/element'

module PBCore
  class Instantiation::MediaType < ContentElement
    element :instantiationMediaType, as: :value

    build_xml do |xml|
      xml.instantiationMediaType(value, xml_attributes.compact)
    end
  end
end
