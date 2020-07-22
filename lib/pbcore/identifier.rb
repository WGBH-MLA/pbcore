require 'pbcore/element'

module PBCore
  class Identifier < ContentElement
    element :pbcoreIdentifier, as: :value

    build_xml do |xml|
      xml.pbcoreIdentifier(value, xml_attributes.compact)
    end
  end
end
