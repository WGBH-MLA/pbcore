FactoryBot.define do
  factory :pbcore_instantiation_rights_link, class: PBCore::Instantiation::Rights::Link, parent: :pbcore_element do
    skip_create
    value { Faker::Internet.url }
    initialize_with { new(attributes) }
  end
end
