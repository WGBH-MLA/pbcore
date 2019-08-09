FactoryBot.define do
  factory :pbcore_contributor_role, class: PBCore::Contributor::Role, parent: :pbcore_element do
    skip_create
    
    value { 'RoleName' }
    initialize_with { new(attributes) }
  end
end
