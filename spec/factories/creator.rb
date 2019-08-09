FactoryBot.define do
  factory :pbcore_creator, class: PBCore::Creator, parent: :pbcore_element do
    skip_create
    
    value { 'AGenre' }
    initialize_with { new(attributes) }
  end
end
