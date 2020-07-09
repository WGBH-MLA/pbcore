require 'pbcore'

FactoryBot.define do
  factory :pbcore_description, class: PBCore::Description, parent: :pbcore_element do
    skip_create
    value { Faker::Lorem.paragraph }
    type { Faker::Hacker.adjective }
    type_ref { Faker::Internet.url }
    initialize_with { new(attributes) }
  end
end
