FactoryBot.define do
  factory :pbcore_publisher, class: PBCore::Publisher, parent: :pbcore_element do
    skip_create
    
    value { 'AGenre' }
    initialize_with { new(attributes) }
  end
end
