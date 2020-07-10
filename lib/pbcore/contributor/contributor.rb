require 'pbcore/element'

module PBCore
  class Contributor::Contributor < ContentElement
    element :contributor, as: :value
    attribute :affiliation, as: :affiliation

    build_xml do |xml|
      xml.contributor(value, xml_attributes.compact)
    end
  end
end
