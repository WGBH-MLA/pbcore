require 'pbcore/element'

module PBCore
  class Instantiation::FileSize < Element
    element :instantiationFileSize, as: :value

    attribute :unitsOfMeasure, as: :units_of_measure

    build_xml do |xml|
      xml.instantiationFileSize(value, xml_attributes.compact)
    end
  end
end
