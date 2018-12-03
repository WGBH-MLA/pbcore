require 'pbcore/element'

module PBCore
  class Contributor < Element
    autoload :Contributor,      'pbcore/contributor/contributor'
    autoload :Role,             'pbcore/contributor/role'

    element :contributor, as: :contributor, class: PBCore::Contributor::Contributor
    element :contributorRole, as: :role, class: PBCore::Contributor::Role

    build_xml do |xml|
      xml.pbcoreContributor(xml_attributes_hash.compact) do |xml|
        contributor.build(xml)
        role.build(xml)
      end
    end
  end
end
