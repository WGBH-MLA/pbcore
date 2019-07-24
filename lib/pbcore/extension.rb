require 'pbcore/element'

module PBCore
  class Extension < Element
    autoload :Wrap,      'pbcore/extension/wrap'
    autoload :Embedded,  'pbcore/extension/embedded'

    element :pbcoreExtension, as: :value
    element :extensionWrap, as: :wrap, class: PBCore::Extension::Wrap
    element :extensionEmbedded, as: :embedded, class: PBCore::Extension::Embedded

    build_xml do |xml|
      xml.pbcoreExtension(xml_attributes.compact) do |xml|
        wrap.build(xml) if wrap
        embedded.build(xml) if embedded
      end
    end
  end
end
