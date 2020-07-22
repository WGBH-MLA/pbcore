require 'pbcore/element'

module PBCore
  class Instantiation::AlternativeModes < ContentElement
    element :instantiationAlternativeModes, as: :value

    build_xml do |xml|
      xml.instantiationAlternativeModes(value, xml_attributes.compact)
    end
  end
end
