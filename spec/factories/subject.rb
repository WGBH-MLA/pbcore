FactoryBot.define do
  factory :pbcore_subject, class: PBCore::Subject, parent: :pbcore_element do
    skip_create
    type { Faker::Hacker.adjective }
    type_source { Faker::Internet.url }
    type_ref { Faker::Internet.url }
    type_annotation { Faker::Hacker.adjective }
    value { Faker::IndustrySegments.sector }
    initialize_with { new(attributes) }
  end
end
