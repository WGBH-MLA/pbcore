require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_relation, class: PBCore::Instantiation::Relation, parent: :pbcore_element do
    skip_create

    type { create(:pbcore_instantiation_relation_type) }
    identifier { create(:pbcore_instantiation_relation_identifier) }

    initialize_with { new(attributes) }
  end
end
