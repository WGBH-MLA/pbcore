require 'pbcore/element'

module PBCore
  class Instantiation::DataRate < Element
    element :instantiationDataRate, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.instantiationDataRate(value, xml_attributes_hash.compact)
    end
  end
end
