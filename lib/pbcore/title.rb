require 'pbcore/element'

module PBCore
  class Title < Element
    attribute :titleType, as: :title_type

    build_xml do |xml|
      attrs = { source: source, titleType: title_type }.compact
      xml.pbcoreTitle(value, attrs)
    end
  end
end
