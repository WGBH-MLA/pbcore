require 'pbcore/element'

module PBCore
  class Instantiation::Extension::Wrap::Element < Element
    element :extensionElement, as: :value

    build_xml do |xml|
      xml.extensionElement(value, xml_attributes_hash.compact)
    end
  end
end
