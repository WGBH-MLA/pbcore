require 'pbcore/element'

module PBCore
  class Extension::Wrap::Element < Element
    element :extensionAuthorityElement, as: :value

    build_xml do |xml|
      xml.extensionAuthorityUsed(value, xml_attributes_hash.compact)
    end
  end
end
