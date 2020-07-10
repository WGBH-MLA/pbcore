require 'pbcore/element'

module PBCore
  class RightsSummary::Link < ContentElement
    element :rightsLink, as: :value

    build_xml do |xml|
      xml.rightsLink(value, xml_attributes.compact)
    end
  end
end
