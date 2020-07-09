require 'pbcore/element'

module PBCore
  class Instantiation::Location < Element
    element :instantiationLocation, as: :value

    build_xml do |xml|
      xml.instantiationLocation(value, xml_attributes.compact)
    end
  end
end
