require 'pbcore/element'

module PBCore
  class AssetDate < Element
    element :pbcoreAssetDate, as: :value
    attribute :dateType, as: :type

    build_xml do |xml|
      xml.pbcoreAssetDate(value, xml_attributes_hash.compact)
    end
  end
end
