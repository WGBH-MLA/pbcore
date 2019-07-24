require 'pbcore/element'

module PBCore
  class Contributor::Role < Element
    element :contributorRole, as: :value
    attribute :portrayal, as: :portrayal

    build_xml do |xml|
      xml.contributorRole(value, xml_attributes.compact)
    end
  end
end
