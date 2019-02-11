require 'pbcore/element'

module PBCore
  class Instantiation::Annotation < Element
    element :instantiationAnnotation, as: :value
    attribute :annotationType, as: :type

    build_xml do |xml|
      xml.instantiationAnnotation(value, xml_attributes_hash.compact)
    end
  end
end
