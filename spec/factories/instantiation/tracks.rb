require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_tracks, class: PBCore::Instantiation::Tracks, parent: :pbcore_content_element do
    

    value { Faker::Music.instrument }

    
  end
end