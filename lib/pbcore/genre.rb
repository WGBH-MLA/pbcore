require 'pbcore/element'

module PBCore
  class Genre < ContentElement
    element :pbcoreGenre, as: :value

    build_xml do |xml|
      xml.pbcoreGenre(value, xml_attributes.compact)
    end
  end
end
