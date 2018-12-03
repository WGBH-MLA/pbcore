require 'pbcore/element'

module PBCore
  class AudienceRating < Element
    element :pbcoreAudienceRating, as: :value

    build_xml do |xml|
      xml.pbcoreAudienceRating(value, xml_attributes_hash.compact)
    end
  end
end
