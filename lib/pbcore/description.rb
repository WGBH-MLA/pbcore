require 'pbcore/element'

module PBCore
  class Description < Element
    build_xml do |xml|
      attrs = { source: source }.compact
      xml.pbcoreDescription(value, attrs)
    end
  end
end
