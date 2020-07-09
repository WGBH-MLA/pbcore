require 'pbcore/element'

module PBCore
  class Instantiation::Extension < Element
    autoload :Wrap,      'pbcore/instantiation/extension/wrap'
    autoload :Embedded,  'pbcore/instantiation/extension/embedded'

    element :instantiationExtension, as: :value
    # NOTE: the classes used for extensionWrap and extensionEmbedded elements
    # here are the same as those used for PBCore::Extension, since everything
    # inside has the same schema.
    element :extensionWrap, as: :wrap, class: PBCore::Extension::Wrap
    element :extensionEmbedded, as: :embedded, class: PBCore::Extension::Embedded

    build_xml do |xml|
      xml.instantiationExtension(xml_attributes.compact) do |xml|
        wrap.build(xml) if wrap
        embedded.build(xml) if embedded
      end
    end
  end
end
