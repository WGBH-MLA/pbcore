require 'pbcore'

FactoryBot.define do
  factory :pbcore_coverage_coverage, class: PBCore::Coverage::Coverage, parent: :pbcore_content_element do

    # TODO: Use controlled vocabularies listed here:
    # http://pbcore.org/elements/coverage
    value { Faker::Lorem.words.join(' ') }

    trait :spatial do
      source { "latitude, longitude" }
      value  { "#{Faker::Address.latitude}, #{Faker::Address.longitude}" }
    end

    trait :temporal do
      source { nil }
      value { rand(1950..2018) }
    end

    
  end
end
