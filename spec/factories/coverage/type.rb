require 'pbcore'

FactoryBot.define do
  factory :pbcore_coverage_type, class: PBCore::Coverage::Type, parent: :pbcore_element do
    skip_create

    value { Faker::Hacker.adjective }

    trait :spatial do
      source { "latitude, longitude" }
      value  { "#{Faker::Address.latitude}, #{Faker::Address.longitude}" }
    end

    trait :temporal do
      source { nil }
      value { rand(1950..2018) }
    end

    initialize_with { new(attributes) }
  end
end
