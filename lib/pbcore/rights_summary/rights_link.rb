require 'pbcore/element'

module PBCore
  class RightsSummary::RightsLink < Element
    element :rightsLink, as: :value

    build_xml do |xml|
      xml.rightsLink(value, xml_attributes_hash.compact)
    end
  end
end
