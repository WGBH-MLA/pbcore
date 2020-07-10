require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_encoding, class: PBCore::Instantiation::EssenceTrack::Encoding, parent: :pbcore_content_element do
    

    value { Faker::Hacker.abbreviation }

    
  end
end