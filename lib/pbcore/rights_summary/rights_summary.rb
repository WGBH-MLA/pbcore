require 'pbcore/element'

module PBCore
  class RightsSummary::RightsSummary < Element
    element :rightsSummary, as: :value

    build_xml do |xml|
      xml.rightsSummary(value, xml_attributes_hash.compact)
    end
  end
end
