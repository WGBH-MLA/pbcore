require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_language, class: PBCore::Instantiation::Language, parent: :pbcore_element do
    skip_create

    source { [ "ISO 639.2", "ISO 639.3" ].sample }
    value { Faker::Demographic.demonym }

    initialize_with { new(attributes) }
  end
end
