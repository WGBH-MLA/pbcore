require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_duration, class: PBCore::Instantiation::EssenceTrack::Duration, parent: :pbcore_content_element do
    

    value { Time.now.strftime( "%H:%M:%S") }

    
  end
end