require 'pbcore/element'

module PBCore
  class Instantiation::Rights::Summary < Element
    element :rightsSummary, as: :value

    build_xml do |xml|
      xml.rightsSummary(value, xml_attributes.compact)
    end
  end
end
