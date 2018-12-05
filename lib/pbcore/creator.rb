require 'pbcore/element'

module PBCore
  class Creator < Element
    autoload :Creator,      'pbcore/creator/creator'
    autoload :Role,         'pbcore/creator/role'

    element :creator, as: :creator, class: PBCore::Creator::Creator
    element :creatorRole, as: :role, class: PBCore::Creator::Role

    build_xml do |xml|
      xml.pbcoreCreator(xml_attributes_hash.compact) do |xml|
        creator.build(xml) if creator
        role.build(xml) if role
      end
    end
  end
end
