require 'pbcore/element'

module PBCore
  class Instantiation::Extension < Element
    autoload :Wrap,      'pbcore/instantiation/extension/wrap'
    autoload :Embedded,  'pbcore/instantiation/extension/embedded'

    element  :extensionWrap, as: :wrap, class: PBCore::Instantiation::Extension::Wrap
    elements :extensionEmbedded, as: :embedded, class: PBCore::Instantiation::Extension::Embedded

    build_xml do |xml|
      xml.instantiationExtension(xml_attributes_hash.compact) do |xml|
        wrap.build(xml)
        embedded.build(xml)
      end
    end
  end
end
