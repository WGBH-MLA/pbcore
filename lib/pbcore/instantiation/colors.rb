require 'pbcore/element'

module PBCore
  class Instantiation::Colors < ContentElement
    element :instantiationColors, as: :value

    build_xml do |xml|
      xml.instantiationColors(value, xml_attributes.compact)
    end
  end
end
