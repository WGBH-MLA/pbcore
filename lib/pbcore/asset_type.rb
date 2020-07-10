require 'pbcore/element'

module PBCore
  class AssetType < ContentElement
    element :pbcoreAssetType, as: :value

    build_xml do |xml|
      xml.pbcoreAssetType(value, xml_attributes.compact)
    end
  end
end
