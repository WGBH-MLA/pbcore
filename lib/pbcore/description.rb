require 'pbcore/base'

module PBCore
  class Description < Base
    build_xml do |xml|
      attrs = { source: source }.compact
      xml.pbcoreDescription(value, attrs)
    end
  end
end
