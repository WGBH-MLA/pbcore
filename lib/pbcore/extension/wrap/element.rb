require 'pbcore/element'

module PBCore
  class Extension::Wrap::Element < ContentElement
    element :extensionElement, as: :value

    build_xml do |xml|
      xml.extensionElement(value, xml_attributes.compact)
    end
  end
end
