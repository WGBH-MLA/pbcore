require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension_embedded, class: PBCore::Extension::Embedded, parent: :pbcore_element do
    skip_create
    value { Faker::Lorem.words }
    initialize_with  { new(attributes) }
  end
end
