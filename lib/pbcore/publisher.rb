require 'pbcore/element'

module PBCore
  class Publisher < Element
    autoload :Publisher,      'pbcore/publisher/publisher'
    autoload :Role,             'pbcore/publisher/role'

    element :pbcorePublisher, as: :value
    element :publisher, as: :publisher, class: PBCore::Publisher::Publisher
    element :publisherRole, as: :role, class: PBCore::Publisher::Role

    build_xml do |xml|
      xml.pbcorePublisher(xml_attributes.compact) do |xml|
        publisher.build(xml) if publisher
        role.build(xml) if role
      end
    end
  end
end
