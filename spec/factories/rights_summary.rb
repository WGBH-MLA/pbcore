require 'pbcore'

FactoryBot.define do
  factory :rights_summary, class: PBCore::RightsSummary::RightsSummary, parent: :pbcore_element do
    skip_create

    value { 'DefaultRights' }

    initialize_with { new(attributes) }
  end
end
