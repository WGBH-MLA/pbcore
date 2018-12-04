require 'pbcore/element'

module PBCore
  class Instantiation::Digital < Element
    element :instantiationDigital, as: :value

    build_xml do |xml|
      xml.instantiationDigital(value, xml_attributes_hash.compact)
    end
  end
end
