require 'pbcore/element'

module PBCore
  class AssetType < Element
    element :pbcoreAssetType, as: :value

    build_xml do |xml|
      xml.pbcoreAssetType(value, xml_attributes_hash.compact)
    end
  end
end
