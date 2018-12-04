require 'pbcore/element'

module PBCore
  class Instantiation::Physical < Element
    element :instantiationPhysical, as: :value

    build_xml do |xml|
      xml.instantiationPhysical(value, xml_attributes_hash.compact)
    end
  end
end
