require 'pbcore'

FactoryBot.define do
  factory :pbcore_rights_summary, class: PBCore::RightsSummary, parent: :pbcore_element do
    skip_create

    summary { create(:pbcore_rights_summary_summary) }
    link { create(:pbcore_rights_summary_link) }
    start_time { DateTimeHelpers.rand_date_time }
    end_time { DateTimeHelpers.rand_date_time after: start_time }
    time_annotation { Faker::Lorem.words }

    initialize_with { new(attributes) }
  end
end
