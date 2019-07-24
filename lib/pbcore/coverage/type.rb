require 'pbcore/element'

module PBCore
  class Coverage::Type < Element
    element :coverageType, as: :value

    build_xml do |xml|
      xml.coverageType(value, xml_attributes.compact)
    end
  end
end
