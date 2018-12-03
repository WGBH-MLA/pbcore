require 'pbcore/element'

module PBCore
  class Publisher::Publisher < Element
    element :publisher, as: :value

    build_xml do |xml|
      xml.publisher(value, xml_attributes_hash.compact)
    end
  end
end
