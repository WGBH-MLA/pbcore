require 'pbcore'

FactoryBot.define do
  factory :pbcore_coverage_coverage, class: PBCore::Coverage::Coverage, parent: :pbcore_element do
    skip_create

    value { Faker::Lorem.words }

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
