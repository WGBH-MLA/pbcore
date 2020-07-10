require 'pbcore/element'

module PBCore
  class Extension::Wrap::Value < ContentElement
    element :extensionValue, as: :value

    build_xml do |xml|
      xml.extensionValue(value, xml_attributes.compact)
    end
  end
end
