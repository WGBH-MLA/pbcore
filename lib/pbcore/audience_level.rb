require 'pbcore/element'

module PBCore
  class AudienceLevel < Element
    element :pbcoreAudienceLevel, as: :value

    build_xml do |xml|
      xml.pbcoreAudienceLevel(value, xml_attributes_hash.compact)
    end
  end
end
