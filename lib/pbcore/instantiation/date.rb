require 'pbcore/element'

module PBCore
  class Instantiation::Date < Element
    element :instantiationDate, as: :value

    attribute :dateType, as: :type

    build_xml do |xml|
      xml.instantiationDate(value, xml_attributes.compact)
    end
  end
end
