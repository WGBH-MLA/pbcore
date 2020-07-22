require 'pbcore'
require 'securerandom'

FactoryBot.define do
  factory :pbcore_identifier, class: PBCore::Identifier, parent: :pbcore_content_element do
    
    value { SecureRandom.uuid }
    
  end
end
