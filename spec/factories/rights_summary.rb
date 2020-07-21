require 'pbcore'

FactoryBot.define do
  factory :pbcore_rights_summary, class: PBCore::RightsSummary, parent: :pbcore_element do
    

    start_time { DateTimeHelpers.rand_date_time }
    end_time { DateTimeHelpers.rand_date_time after: start_time }
    time_annotation { Faker::Lorem.words.join(' ') }

    

    after(:build) do |element, _evaluator|
      unless element.link || element.summary
        # <rightsLink> and <rightsSummary> are mutually exclusive, but one of
        # them is required, so if neither are set explicitly, then choose one to
        # set at random.
        [
          -> { element.link = build(:pbcore_rights_summary_link) },
          -> { element.summary = build(:pbcore_rights_summary_summary) }
        ].sample.call
      end
    end
  end
end
