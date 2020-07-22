require 'pbcore'
require 'securerandom'

FactoryBot.define do
  factory :pbcore_relation_identifier, class: PBCore::Relation::Identifier, parent: :pbcore_content_element do
    
    value { SecureRandom.uuid }
    
  end
end
