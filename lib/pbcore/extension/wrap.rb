require 'pbcore/element'

module PBCore
  class Extension::Wrap < Element
    autoload :AuthorityUsed,      'pbcore/extension/wrap/authority_used'
    autoload :Element,            'pbcore/extension/wrap/element'
    autoload :Value,              'pbcore/extension/wrap/value'

    element :extensionElement, as: :element, class: PBCore::Extension::Wrap::Element
    # Have to diverge from the naming convention here, because using just :value conflicts
    # with special meaning for SAXMachine.
    element :extensionValue, as: :extension_value, class: PBCore::Extension::Wrap::Value
    element :extensionAuthorityUsed, as: :authority_used, class: PBCore::Extension::Wrap::AuthorityUsed

    build_xml do |xml|
      xml.extensionWrap(xml_attributes_hash.compact) do |xml|
        element.build(xml) if element
        extension_value.build(xml) if extension_value
        authority_used.build(xml) if authority_used
      end
    end
  end
end
