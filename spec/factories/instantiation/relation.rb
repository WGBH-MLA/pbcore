require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_relation, class: PBCore::Instantiation::Relation, parent: :pbcore_element do
    

    type { create(:pbcore_instantiation_relation_type) }
    identifier { create(:pbcore_instantiation_relation_identifier) }

    
  end
end
