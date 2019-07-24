require 'pbcore/element'

module PBCore
  class Contributor < Element
    autoload :Contributor,      'pbcore/contributor/contributor'
    autoload :Role,             'pbcore/contributor/role'

    element :pbcoreContributor, as: :value
    element :contributor, as: :contributor, class: PBCore::Contributor::Contributor
    element :contributorRole, as: :role, class: PBCore::Contributor::Role

    build_xml do |xml|
      xml.pbcoreContributor(xml_attributes.compact) do |xml|
        contributor.build(xml) if contributor
        role.build(xml) if role
      end
    end
  end
end
