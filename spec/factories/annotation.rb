require 'pbcore'
require 'faker'

FactoryBot.define do
  factory :pbcore_annotation, class: PBCore::Annotation, parent: :pbcore_element do
    skip_create
    value { Faker::Quote.famous_last_words }

    trait :level_of_user_access do
      type { 'Level of User Access' }
    end
    trait :on_location do
      value { 'On Location' }
    end

    trait :online_reading_room do
      value { 'Online Reading Room' }
    end

    trait :organization do
      value { Faker::TvShows::StarTrek }
    end

    initialize_with { new(attributes) }
  end
end