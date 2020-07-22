# NOTE: The <extensionEmbedded> element is supposed to contain XML from a
# different (non-PBCore) schema. However, due to the declarative nature of
# SAXMachine parsing, we need to know what we're parsing before we're parsing
# it, so PBCore::Extension::Embedded cannot be used for parsing arbitrary
# embedded XML. You can, however, still use the class to set some embedded
# XML and output it with #to_xml. It just won't be re-parsable using this same
# class. There might be a fix for this by overriding the .parse class method
# but there's not enough demand for that work at this time. Until then, our
# specs just do not include PBCore::Extension::Embedded in our test for
# round-trippability.
require 'pbcore/element'

module PBCore
  class Extension::Embedded < ContentElement
    element :extensionEmbedded, as: :value
    build_xml do |xml|
      xml.extensionEmbedded('', xml_attributes.compact) do |xml|
        xml << value
      end
    end
  end
end
