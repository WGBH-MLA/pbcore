require 'pbcore/element'

module PBCore
  class Publisher::Publisher < Element
    element :publisher, as: :value

    attribute :affiliation, as: :affiliation
    attribute :affiliationSource, as: :affiliation_source
    attribute :affiliationRef, as: :affiliation_ref
    attribute :affiliationVersion, as: :affiliation_version
    attribute :affiliationAnnotation, as: :affiliation_annotation

    build_xml do |xml|
      xml.publisher(value, xml_attributes.compact)
    end
  end
end
