require 'pbcore/element'

module PBCore
  class Extension::Embedded < Element
    element :extensionEmbedded, as: :value
    build_xml do |xml|
      xml.extensionEmbedded(value, xml_attributes_hash.compact)
    end
  end
end
