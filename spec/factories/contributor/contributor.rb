FactoryBot.define do
  factory :pbcore_contributor_contributor, class: PBCore::Contributor::Contributor, parent: :pbcore_element do
    skip_create
    
    affiliation { 'AnAffiliation' }    
    value { 'ContributorName' }
    initialize_with { new(attributes) }
  end
end
