require 'pbcore'

FactoryBot.define do
  factory :pbcore_relation, class: PBCore::Relation, parent: :pbcore_element do
    skip_create

    type { create(:pbcore_relation_type) }
    identifier { create(:pbcore_relation_identifier) }

    initialize_with { new(attributes) }
  end
end
