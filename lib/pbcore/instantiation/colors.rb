require 'pbcore/element'

module PBCore
  class Instantiation::Colors < Element
    element :instantiationColors, as: :value

    build_xml do |xml|
      xml.instantiationColors(value, xml_attributes_hash.compact)
    end
  end
end
