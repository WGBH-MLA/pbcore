require 'pbcore/element'

module PBCore
  class Extension::Wrap < Element
    autoload :AuthorityUsed,      'pbcore/extension/wrap/authority_used'
    autoload :Element,            'pbcore/extension/wrap/element'
    autoload :Value,              'pbcore/extension/wrap/value'

    element :extensionWrap, as: :value
    # We set the accessors here to be extension_element and extension_value
    # rather than just `extension` and `value` as the naming convention would
    # suggest, because both `value` and `element` have special meaning for
    # SAXMachine and we want to avoid conflict and confusion.
    element :extensionElement, as: :extension_element, class: PBCore::Extension::Wrap::Element
    element :extensionValue, as: :extension_value, class: PBCore::Extension::Wrap::Value
    element :extensionAuthorityUsed, as: :authority_used, class: PBCore::Extension::Wrap::AuthorityUsed

    build_xml do |xml|
      xml.extensionWrap(xml_attributes.compact) do |xml|
        extension_element.build(xml) if extension_element
        extension_value.build(xml) if extension_value
        authority_used.build(xml) if authority_used
      end
    end
  end
end
