require 'pbcore/base'

module PBCore
  class Identifier < Base
    value :value

    build_xml do |xml|
      xml.pbcoreIdentifier(value, source: source)
    end
  end
end
