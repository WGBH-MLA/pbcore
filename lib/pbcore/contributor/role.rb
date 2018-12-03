require 'pbcore/element'

module PBCore
  class Contributor::Role < Element
    element :contributorRole, as: :value

    build_xml do |xml|
      xml.contributorRole(value, xml_attributes_hash.compact)
    end
  end
end
