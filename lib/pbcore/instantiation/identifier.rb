require 'pbcore/element'

module PBCore
  class Instantiation::Identifier < Element
    element :instantiationIdentifier, as: :value

    build_xml do |xml|
      xml.instantiationIdentifier(value, xml_attributes_hash.compact)
    end
  end
end
