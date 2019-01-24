require 'pbcore/element'

module PBCore
  class Contributor::Contributor < Element
    element :contributor, as: :value
    attribute :affiliation, as: :affiliation
    attribute :portrayal, as: :portrayal

    build_xml do |xml|
      xml.contributor(value, xml_attributes_hash.compact)
    end
  end
end
