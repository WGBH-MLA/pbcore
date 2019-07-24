require 'pbcore/element'

module PBCore
  class Instantiation::Standard < Element
    element :instantiationStandard, as: :value

    attribute :profile, as: :profile

    build_xml do |xml|
      xml.instantiationStandard(value, xml_attributes.compact)
    end
  end
end
