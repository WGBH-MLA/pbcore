require 'pbcore/element'

module PBCore
  class Title < ContentElement
    element :pbcoreTitle, as: :value
    attribute :titleType, as: :type
    attribute :titleTypeSource, as: :type_source
    attribute :titleTypeRef, as: :type_ref
    attribute :titleTypeAnnotation, as: :type_annotation

    build_xml do |xml|
      xml.pbcoreTitle(value, xml_attributes.compact)
    end
  end
end
