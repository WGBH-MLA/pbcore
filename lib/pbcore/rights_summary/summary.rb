require 'pbcore/element'

module PBCore
  class RightsSummary::Summary < ContentElement
    element :rightsSummary, as: :value

    build_xml do |xml|
      xml.rightsSummary(value, xml_attributes.compact)
    end
  end
end
