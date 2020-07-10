require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_identifier, class: PBCore::Instantiation::EssenceTrack::Identifier, parent: :pbcore_content_element do
    

    value { Faker::IDNumber.valid }

    
  end
end