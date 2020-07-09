require 'pbcore'
require 'securerandom'

FactoryBot.define do
  factory :pbcore_identifier, class: PBCore::Identifier, parent: :pbcore_element do
    skip_create
    value { SecureRandom.uuid }
    initialize_with { new(attributes) }
  end
end
