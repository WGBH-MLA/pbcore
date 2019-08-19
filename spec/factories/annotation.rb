require 'pbcore'
require 'faker'

FactoryBot.define do
  factory :pbcore_annotation, class: PBCore::Annotation, parent: :pbcore_element do
    skip_create
    value { Faker::Quote.famous_last_words }

    trait :on_location do
      type { 'Level of User Access' }
      value { 'On Location' }
    end

    trait :online_reading_room do
      type { 'Level of User Access' }
      value { 'Online Reading Room' }
    end

    trait :private do
      type { 'Level of User Access' }
      value { 'Private' }
    end

    trait :organization do
      value { Faker::TvShows::StarTrek }
    end

    trait :outside_url do
      type { 'Outside URL' }
      value { 'http://www.wgbh.org/' }
    end

    trait :external_reference_url do
      type { 'External Reference URL' }
      value { 'http://www.hbgw.org/' }
    end

    trait :has_transcript_url do
      type { 'Transcript URL' }
      value { 'https://s3.amazonaws.com/americanarchive.org/transcripts/cpb-aacip-111-21ghx7d6/cpb-aacip-111-21ghx7d6-transcript.json' }
    end

    trait :has_transcript_status do
      type { 'Transcript Status' }
      value { 'Correct' }
    end

    initialize_with { new(attributes) }
  end
end
