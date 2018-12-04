require 'pbcore/element'

module PBCore
  class Annotation < Element
    element :pbcoreAnnotation, as: :value
    attribute :annotationType, as: :type

    build_xml do |xml|
      xml.pbcoreAnnotation(value, xml_attributes_hash.compact)
    end
  end
end
