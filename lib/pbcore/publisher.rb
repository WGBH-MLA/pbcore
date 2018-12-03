require 'pbcore/element'

module PBCore
  class Publisher < Element
    autoload :Publisher,      'pbcore/publisher/publisher'
    autoload :Role,             'pbcore/publisher/role'

    element :publisher, as: :publisher, class: PBCore::Publisher::Publisher
    element :publisherRole, as: :role, class: PBCore::Publisher::Role

    build_xml do |xml|
      xml.pbcorePublisher(xml_attributes_hash.compact) do |xml|
        publisher.build(xml)
        role.build(xml)
      end
    end
  end
end
