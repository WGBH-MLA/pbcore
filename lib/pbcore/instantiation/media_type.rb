require 'pbcore/element'

module PBCore
  class Instantiation::MediaType < Element
    element :instantiationMediaType, as: :value

    build_xml do |xml|
      xml.instantiationMediaType(value, xml_attributes_hash.compact)
    end
  end
end
