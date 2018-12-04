require 'pbcore/element'

module PBCore
  class Instantiation::Tracks < Element
    element :instantiationTracks, as: :value

    build_xml do |xml|
      xml.instantiationTracks(value, xml_attributes_hash.compact)
    end
  end
end
