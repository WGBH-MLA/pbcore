require 'pbcore/element'

module PBCore
  class Instantiation::TimeStart < ContentElement
    element :instantiationTimeStart, as: :value

    build_xml do |xml|
      xml.instantiationTimeStart(value, xml_attributes.compact)
    end
  end
end
