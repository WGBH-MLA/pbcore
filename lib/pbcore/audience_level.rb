require 'pbcore/element'

module PBCore
  class AudienceLevel < ContentElement
    element :pbcoreAudienceLevel, as: :value

    build_xml do |xml|
      xml.pbcoreAudienceLevel(value, xml_attributes.compact)
    end
  end
end
