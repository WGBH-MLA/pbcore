require 'pbcore/element'

module PBCore
  class Extension < Element
    autoload :Wrap,      'pbcore/extension/wrap'
    autoload :Embedded,  'pbcore/extension/embedded'

    element :extensionWrap, as: :wrap, class: PBCore::Extension::Wrap
    element :extensionEmbedded, as: :embedded, class: PBCore::Extension::Embedded

    build_xml do |xml|
      xml.pbcoreExtension(xml_attributes_hash.compact) do |xml|
        wrap.build(xml) if wrap
        embedded.build(xml) if embedded
      end
    end
  end
end
