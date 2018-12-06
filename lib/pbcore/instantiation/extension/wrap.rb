require 'pbcore/element'

module PBCore
  class Instantiation::Extension::Wrap < Element
    autoload :AuthorityUsed,      'pbcore/instantiation/extension/wrap/authority_used'
    autoload :Element,            'pbcore/instantiation/extension/wrap/element'
    autoload :Value,              'pbcore/instantiation/extension/wrap/value'

    element :extensionElement, as: :element, class: PBCore::Instantiation::Extension::Wrap::Element
    element :extensionValue, as: :value, class: PBCore::Instantiation::Extension::Wrap::Value
    element :extensionAuthorityUsed, as: :authority_used, class: PBCore::Instantiation::Extension::Wrap::AuthorityUsed

    build_xml do |xml|
      xml.extensionWrap(xml_attributes_hash.compact) do |xml|
        element.build(xml)
        value.build(xml)
        authority_used.build(xml)
      end
    end
  end
end
