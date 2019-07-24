FactoryBot.define do
  factory :pbcore_instantiation_rights_summary, class: PBCore::Instantiation::Rights::Summary, parent: :pbcore_element do
    skip_create
    value { Faker::Lorem.paragraph }
    initialize_with { new(attributes) }
  end
end
