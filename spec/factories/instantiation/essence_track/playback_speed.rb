require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_playback_speed, class: PBCore::Instantiation::EssenceTrack::PlaybackSpeed, parent: :pbcore_content_element do
    

    value { rand(1..50).to_s }
    units_of_measure { ['RPM', 'IPS'].sample }

    
  end
end
