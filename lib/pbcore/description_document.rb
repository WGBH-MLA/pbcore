require 'sax-machine'
require 'pbcore/identifier'

module PBCore
  class DescriptionDocument < Base
    elements :pbcoreIdentifier, as: :identifiers, class: PBCore::Identifier
    elements :pbcoreTitle, as: :titles, class: PBCore::Title
    elements :pbcoreDescription, as: :descriptions, class: PBCore::Description

    build_xml do |xml|
      xml.pbcoreDescriptionDocument(namespace_attributes) do |xml|
        identifiers.each { |identifier| identifier.build(xml) }
        titles.each { |title| title.build(xml) }
        descriptions.each { |description| description.build(xml) }
      end
    end

    # NOTE: For some reason, these attributes will not parse with SAXMachine
    # attributes.
    # TODO: Is there a better way to set namespace attributes?
    def namespace_attributes
      {
        'xmlns' => "http://pbcore.org/PBCore/PBCoreNamespace.html",
        'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xsi:schemaLocation' => "http://pbcore.org/PBCore/PBCoreNamespace.html https://raw.githubusercontent.com/WGBH/PBCore_2.1/master/pbcore-2.1.xsd"
      }
    end
  end
end
