require 'pbcore/element'

module PBCore
  class Extension::Wrap::AuthorityUsed < Element
    element :extensionAuthorityUsed, as: :value

    build_xml do |xml|
      xml.extensionAuthorityUsed(value, xml_attributes_hash.compact)
    end
  end
end
