require 'pbcore/element'

module PBCore
  class AssetDate < ContentElement
    element :pbcoreAssetDate, as: :value
    attribute :dateType, as: :type

    build_xml do |xml|
      xml.pbcoreAssetDate(value, xml_attributes.compact)
    end
  end
end
