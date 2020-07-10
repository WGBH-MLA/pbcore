require 'pbcore'

FactoryBot.define do
  factory :pbcore_relation_type, class: PBCore::Relation::Type, parent: :pbcore_content_element do
    
    value { Faker::Hacker.abbreviation }
    
  end
end
