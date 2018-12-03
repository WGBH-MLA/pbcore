require 'pbcore/element'

module PBCore
  class Contributor::Contributor < Element
    element :contributor, as: :value

    build_xml do |xml|
      xml.contributor(value, xml_attributes_hash.compact)
    end
  end
end
