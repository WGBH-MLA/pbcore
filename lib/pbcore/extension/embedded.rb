# NOTE: This class doesn't actually work like you might expect it to.
# The <extensionEmbedded> element is supposed to contain XML from a different
# (non-PBCore) schema. However, currently the SAXMachine parser will proceed
# to parse the embedded XML rather than capture it and provide an accessor to
# it, which is what we want to happen.
require 'pbcore/element'

module PBCore
  class Extension::Embedded < Element
    element :extensionEmbedded, as: :value
    build_xml do |xml|
      xml.extensionEmbedded(value, xml_attributes.compact)
    end
  end
end
