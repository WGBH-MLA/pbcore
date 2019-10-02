FactoryBot.define do
  factory :pbcore_publisher_role, class: PBCore::Publisher::Role, parent: :pbcore_element do
    skip_create
    
    value { 'RoleName' }
    initialize_with { new(attributes) }
  end
end