require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_rights, class: PBCore::Instantiation::Rights, parent: :pbcore_element do
    

    # rightsSummary and rightsLink elements are mutually exclusive.
    if [true, false].sample
      summary { build(:pbcore_instantiation_rights_summary) }
    else
      link    { build(:pbcore_instantiation_rights_link) }
    end

    start_time { DateTimeHelpers.rand_date_time }
    end_time { DateTimeHelpers.rand_date_time(after: start_time) }
    time_annotation { Faker::Lorem.words.join(' ') }

    
  end
end
