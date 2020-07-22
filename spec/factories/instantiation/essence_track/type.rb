require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_type, class: PBCore::Instantiation::EssenceTrack::Type, parent: :pbcore_content_element do
    

    value { Faker::Hacker.abbreviation }

    
  end
end