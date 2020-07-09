require 'pbcore'
require 'securerandom'

FactoryBot.define do
  factory :pbcore_relation_identifier, class: PBCore::Relation::Identifier, parent: :pbcore_element do
    skip_create
    value { SecureRandom.uuid }
    initialize_with { new(attributes) }
  end
end
