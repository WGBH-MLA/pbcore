require 'pbcore/element'

module PBCore
  class Instantiation::Generations < Element
    element :instantiationGenerations, as: :value

    build_xml do |xml|
      xml.instantiationGenerations(value, xml_attributes.compact)
    end
  end
end
