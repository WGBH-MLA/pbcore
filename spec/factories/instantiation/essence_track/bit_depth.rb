require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_bit_depth, class: PBCore::Instantiation::EssenceTrack::BitDepth, parent: :pbcore_content_element do
    

    value { rand(10) }
    units_of_measure { Faker::Hacker.abbreviation }

    
  end
end