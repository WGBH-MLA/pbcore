require 'pbcore'

FactoryBot.define do
  factory :pbcore_rights_summary_summary, class: PBCore::RightsSummary::Summary, parent: :pbcore_element do
    skip_create

    value { Faker::Lorem.paragraph }

    initialize_with { new(attributes) }
  end
end
