require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_standard, class: PBCore::Instantiation::EssenceTrack::Standard, parent: :pbcore_content_element do
    

    value { Faker::Hacker.abbreviation }

    
  end
end