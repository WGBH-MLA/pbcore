require 'pbcore/element'

module PBCore
  class Extension::Wrap < Element
    autoload :AuthorityUsed,      'pbcore/extension/wrap/authority_used'
    autoload :Element,            'pbcore/extension/wrap/element'
    autoload :Value,              'pbcore/extension/wrap/value'

    element :extensionElement, as: :element, class: PBCore::Extension::Wrap::Element
    element :extensionValue, as: :value, class: PBCore::Extension::Wrap::Value
    element :extensionAuthorityUsed, as: :authority_used, class: PBCore::Extension::Wrap::AuthorityUsed

    build_xml do |xml|
      xml.extensionWrap(xml_attributes_hash.compact) do |xml|
        element.build(xml)
        value.build(xml)
        authority_used.build(xml)
      end
    end
  end
end
