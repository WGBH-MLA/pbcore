require 'pbcore/element'

module PBCore
  class Instantiation::Annotation < ContentElement
    element :instantiationAnnotation, as: :value
    attribute :annotationType, as: :type

    build_xml do |xml|
      xml.instantiationAnnotation(value, xml_attributes.compact)
    end
  end
end
