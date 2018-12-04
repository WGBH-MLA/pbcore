require 'pbcore/element'

module PBCore
  class Instantiation::Language < Element
    element :instantiationLanguage, as: :value

    build_xml do |xml|
      xml.instantiationLanguage(value, xml_attributes_hash.compact)
    end
  end
end
