require 'pbcore/element'

module PBCore
  class Instantiation::AlternativeModes < Element
    element :instantiationAlternativeModes, as: :value

    build_xml do |xml|
      xml.instantiationAlternativeModes(value, xml_attributes_hash.compact)
    end
  end
end
