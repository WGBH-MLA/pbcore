require 'pbcore/element'

module PBCore
  class Instantiation::Dimensions < Element
    element :instantiationDimensions, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.instantiationDimensions(value, xml_attributes.compact)
    end
  end
end
