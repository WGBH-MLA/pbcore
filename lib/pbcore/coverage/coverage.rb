require 'pbcore/element'

module PBCore
  class Coverage::Coverage < Element
    element :coverage, as: :value

    build_xml do |xml|
      xml.coverage(value, xml_attributes_hash.compact)
    end
  end
end
