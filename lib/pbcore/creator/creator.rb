require 'pbcore/element'

module PBCore
  class Creator::Creator < Element
    element :creator, as: :value

    build_xml do |xml|
      xml.creator(value, xml_attributes_hash.compact)
    end
  end
end
