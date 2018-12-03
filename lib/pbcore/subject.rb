require 'pbcore/element'

module PBCore
  class Subject < Element
    element :pbcoreSubject, as: :value
    attribute :subjectType, as: :type
    attribute :subjectTypeRef, as: :type_ref
    attribute :subjectTypeSource, as: :type_source
    attribute :subjectTypeAnnotation, as: :type_annotation

    build_xml do |xml|
      xml.pbcoreDescription(value, xml_attributes_hash.compact)
    end
  end
end
