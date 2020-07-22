require 'pbcore'

FactoryBot.define do
  factory :pbcore_coverage_type, class: PBCore::Coverage::Type, parent: :pbcore_element do
    # TODO: Replace with rando term from controlled vocab once we get it.
    value { ["Spatial", "Temporal"].sample }
  end
end
