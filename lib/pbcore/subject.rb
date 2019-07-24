require 'pbcore/element'

module PBCore
  class Subject < Element
    element :pbcoreSubject, as: :value
    attribute :subjectType, as: :type
    attribute :subjectTypeRef, as: :type_ref
    attribute :subjectTypeSource, as: :type_source
    attribute :subjectTypeAnnotation, as: :type_annotation

    build_xml do |xml|
      xml.pbcoreSubject(value, xml_attributes.compact)
    end
  end
end
