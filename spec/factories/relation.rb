require 'pbcore'

FactoryBot.define do
  factory :pbcore_relation, class: PBCore::Relation, parent: :pbcore_element do
    type { create(:pbcore_relation_type) }
    identifier { create(:pbcore_relation_identifier) }
  end
end
