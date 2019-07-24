require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_rights, class: PBCore::Instantiation::Rights, parent: :pbcore_element do
    skip_create
    summary { build(:pbcore_instantiation_rights_summary) }
    link    { build(:pbcore_instantiation_rights_link) }
    start_time { DateTimeHelpers.rand_date_time }
    end_time { DateTimeHelpers.rand_date_time(after: start_time) }
    time_annotation { Faker::Lorem.words }

    initialize_with { new(attributes) }
  end
end
