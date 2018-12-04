require 'pbcore/element'

module PBCore
  class Title < Element
    element :pbcoreTitle, as: :value
    attribute :titleType, as: :type
    attribute :titleTypeSource, as: :type_source
    attribute :titleTypeRef, as: :type_ref
    attribute :titleTypeAnnotation, as: :type_annotation

    build_xml do |xml|
      xml.pbcoreTitle(value, xml_attributes_hash.compact)
    end
  end
end
