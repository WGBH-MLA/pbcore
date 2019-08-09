FactoryBot.define do
  factory :pbcore_creator_creator, class: PBCore::Creator::Creator, parent: :pbcore_element do
    skip_create
    
    affiliation { 'AnAffiliation' }    
    value { 'CreatorName' }
    initialize_with { new(attributes) }
  end
end
