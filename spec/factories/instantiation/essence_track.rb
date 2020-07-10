require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track, class: PBCore::Instantiation::EssenceTrack , parent: :pbcore_element do
    

    type            { build(:pbcore_instantiation_essence_track_type) }
    identifiers     { build_list(:pbcore_instantiation_essence_track_identifier, rand(1..3)) }
    standard        { build(:pbcore_instantiation_essence_track_standard) }
    encoding        { build(:pbcore_instantiation_essence_track_encoding) }
    data_rate       { build(:pbcore_instantiation_essence_track_data_rate) }
    frame_rate      { build(:pbcore_instantiation_essence_track_frame_rate) }
    playback_speed  { build(:pbcore_instantiation_essence_track_playback_speed) }
    sampling_rate   { build(:pbcore_instantiation_essence_track_sampling_rate) }
    bit_depth       { build(:pbcore_instantiation_essence_track_bit_depth) }
    frame_size      { build(:pbcore_instantiation_essence_track_frame_size) }
    aspect_ratio    { build(:pbcore_instantiation_essence_track_aspect_ratio) }
    time_start      { build(:pbcore_instantiation_essence_track_time_start) }
    duration        { build(:pbcore_instantiation_essence_track_duration) }
    annotations     { build_list(:pbcore_instantiation_essence_track_annotation, rand(1..3)) }
    languages       { build_list(:pbcore_instantiation_essence_track_language, rand(1..3)) }

    trait :sixteen_nine do
        aspect_ratio { build(:pbcore_instantiation_essence_track_aspect_ratio, :sixteen_nine) }
    end

    
  end
end
