require 'pbcore/element'

module PBCore
  class Instantiation::Extension::Wrap::Value < Element
    element :extensionValue, as: :value

    build_xml do |xml|
      xml.extensionValue(value, xml_attributes_hash.compact)
    end
  end
end
