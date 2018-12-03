require 'pbcore/element'

module PBCore
  class Identifier < Element
    element :pbcoreIdentifier, as: :value

    build_xml do |xml|
      xml.pbcoreIdentifier(value, xml_attributes_hash.compact)
    end
  end
end
