require 'pbcore/element'

module PBCore
  class AudienceRating < ContentElement
    element :pbcoreAudienceRating, as: :value

    build_xml do |xml|
      xml.pbcoreAudienceRating(value, xml_attributes.compact)
    end
  end
end
