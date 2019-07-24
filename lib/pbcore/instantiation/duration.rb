require 'pbcore/element'

module PBCore
  class Instantiation::Duration < Element
    element :instantiationDuration, as: :value

    build_xml do |xml|
      xml.instantiationDuration(value, xml_attributes.compact)
    end
  end
end
