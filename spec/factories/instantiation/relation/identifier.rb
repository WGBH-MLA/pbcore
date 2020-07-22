require 'pbcore'
require 'securerandom'

FactoryBot.define do
  factory :pbcore_instantiation_relation_identifier, class: PBCore::Instantiation::Relation::Identifier, parent: :pbcore_content_element do
    
    value { SecureRandom.uuid }
    
  end
end
