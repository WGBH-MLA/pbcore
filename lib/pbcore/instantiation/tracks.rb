require 'pbcore/element'

module PBCore
  class Instantiation::Tracks < ContentElement
    element :instantiationTracks, as: :value

    build_xml do |xml|
      xml.instantiationTracks(value, xml_attributes.compact)
    end
  end
end
