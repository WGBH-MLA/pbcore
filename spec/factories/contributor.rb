require 'pbcore'
require 'faker'

FactoryBot.define do
  factory :pbcore_contributor, class: PBCore::Contributor, parent: :pbcore_element do
    contributor { build(:pbcore_contributor_contributor) }
    role { build(:pbcore_contributor_role )  }
  end
end
