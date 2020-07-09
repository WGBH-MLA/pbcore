require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_date, class: PBCore::Instantiation::Date, parent: :pbcore_element do
    skip_create

    type { PBCore::Vocab.date_types.sample }
    value { Faker::Date.backward(rand(1..1000)) }

    initialize_with { new(attributes) }
  end
end
