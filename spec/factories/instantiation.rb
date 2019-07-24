require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation, class: PBCore::Instantiation, parent: :pbcore_element do
    skip_create

    identifiers             { build_list(:pbcore_instantiation_identifier, rand(1..3)) }
    dates                   { build_list(:pbcore_instantiation_date, rand(1..3)) }
    dimensions              { build_list(:pbcore_instantiation_dimensions, rand(1..3)) }
    digital                 { build(:pbcore_instantiation_digital) }
    physical                { build(:pbcore_instantiation_physical) }
    standard                { build(:pbcore_instantiation_standard) }
    location                { build(:pbcore_instantiation_location) }
    media_type              { build(:pbcore_instantiation_media_type) }
    generations             { build_list(:pbcore_instantiation_generations, rand(1..3)) }
    time_starts             { build_list(:pbcore_instantiation_time_start, rand(1..3)) }
    duration                { build(:pbcore_instantiation_duration) }
    colors                  { build(:pbcore_instantiation_colors) }
    rights                  { build_list(:pbcore_instantiation_rights, rand(1..3)) }
    tracks                  { build(:pbcore_instantiation_tracks) }
    channel_configuration   { build(:pbcore_instantiation_channel_configuration) }
    alternative_modes       { build(:pbcore_instantiation_alternative_modes) }
    annotations             { build_list(:pbcore_instantiation_annotation, rand(1..3)) }
    essence_tracks          { build_list(:pbcore_instantiation_essence_track, rand(1..3)) }
    extensions              { build_list(:pbcore_instantiation_extension, rand(1..3)) }
    languages               { build_list(:pbcore_instantiation_language, rand(1..3)) }
    relations               { build_list(:pbcore_instantiation_relation, rand(1..3)) }
    file_size               { build(:pbcore_instantiation_file_size) }
    data_rate               { build(:pbcore_instantiation_data_rate) }

    # time attributes
    start_time { DateTimeHelpers.rand_date_time }
    end_time { DateTimeHelpers.rand_date_time after: start_time }
    time_annotation { Faker::Movies::StarWars.quote }

    initialize_with { new(attributes) }
  end
end
