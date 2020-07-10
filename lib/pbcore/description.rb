require 'pbcore/element'

module PBCore
  class Description < ContentElement
    element :pbcoreDescription, as: :value
    attribute :descriptionType, as: :type
    attribute :descriptionTypeRef, as: :type_ref

    build_xml do |xml|
      xml.pbcoreDescription(value, xml_attributes.compact)
    end
  end
end
