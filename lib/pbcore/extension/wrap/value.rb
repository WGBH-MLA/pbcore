require 'pbcore/element'

module PBCore
  class Extension::Wrap::Value < Element
    element :extensionValue, as: :value

    build_xml do |xml|
      xml.extensionValue(value, xml_attributes.compact)
    end
  end
end
