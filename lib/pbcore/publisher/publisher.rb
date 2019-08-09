require 'pbcore/element'

module PBCore
  class Publisher::Publisher < Element
    element :publisher, as: :value
    attribute :affiliation, as: :affiliation

    build_xml do |xml|
      xml.publisher(value, xml_attributes_hash.compact)
    end
  end
end
