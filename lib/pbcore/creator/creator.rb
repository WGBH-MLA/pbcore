require 'pbcore/element'

module PBCore
  class Creator::Creator < Element
    element :creator, as: :value
    attribute :affiliation, as: :affiliation

    build_xml do |xml|
      xml.creator(value, xml_attributes_hash.compact)
    end
  end
end
