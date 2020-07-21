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
        # <extensionWrap> and <extensionEmbedded> are mutually exclusive. Wrap
        # takes precedence, so if you want to output <extensionEmbedded> make
        # sure #wrap is set to nil.
        # NOTE: Using #embedded will not produce round-trippable XML (i.e. XML
        # that can be reparsed by the pbcore gem models.
        # (See lib/pbcore/extension/embedded.rb)
        if wrap
          wrap.build(xml)
        elsif embedded
          embedded.build(xml)
        end
      end
    end
  end
end
