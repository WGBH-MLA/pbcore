require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_annotation, class: PBCore::Instantiation::EssenceTrack::Annotation, parent: :pbcore_content_element do
    

    value { Faker::TvShows::Seinfeld.quote }
    type { Faker::TvShows::Seinfeld.character }

    
  end
end
