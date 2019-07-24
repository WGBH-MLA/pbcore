require 'pbcore/element'

module PBCore
  class Coverage::Coverage < Element
    element :coverage, as: :value

    build_xml do |xml|
      xml.coverage(value, xml_attributes.compact)
    end
  end
end
