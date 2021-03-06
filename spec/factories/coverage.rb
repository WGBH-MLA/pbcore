require 'pbcore'

FactoryBot.define do
  factory :pbcore_coverage, class: PBCore::Coverage, parent: :pbcore_element do


    coverage  { build(:pbcore_coverage_coverage) }
    type      { build(:pbcore_coverage_type) }

    trait :spatial do
      coverage { build :pbcore_coverage_coverage, :spatial }
      type { build :pbcore_coverage_type, :spatial }
    end

    trait :temporal do
      coverage { build :pbcore_coverage_coverage, :temporal }
      type { build :pbcre_coverage_type, :temporal }
    end

    
  end
end
