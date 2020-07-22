require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_relation_type, class: PBCore::Instantiation::Relation::Type, parent: :pbcore_content_element do
    
    value { Faker::Hacker.abbreviation }
    
  end
end
