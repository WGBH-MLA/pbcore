require 'pbcore/element'

module PBCore
  class Instantiation::Physical < ContentElement
    element :instantiationPhysical, as: :value

    build_xml do |xml|
      xml.instantiationPhysical(value, xml_attributes.compact)
    end
  end
end
