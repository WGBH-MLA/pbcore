require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_language, class: PBCore::Instantiation::EssenceTrack::Language, parent: :pbcore_element do
    skip_create

    value { Faker::Demographic.demonym }

    initialize_with { new(attributes) }
  end
end
