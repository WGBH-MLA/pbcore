require 'pbcore'

FactoryBot.define do
  factory :pbcore_rights_summary_link, class: PBCore::RightsSummary::Link, parent: :pbcore_element do
    skip_create

    value { Faker::Internet.url }

    initialize_with { new(attributes) }
  end
end
