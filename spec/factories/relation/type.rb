require 'pbcore'

FactoryBot.define do
  factory :pbcore_relation_type, class: PBCore::Relation::Type, parent: :pbcore_element do
    skip_create
    value { Faker::Hacker.abbreviation }
    initialize_with { new(attributes) }
  end
end