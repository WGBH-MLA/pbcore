require 'pbcore/element'

module PBCore
  class Identifier < Element
    value :value

    build_xml do |xml|
      xml.pbcoreIdentifier(value, source: source)
    end
  end
end
