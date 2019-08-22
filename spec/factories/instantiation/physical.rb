require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_physical, class: PBCore::Instantiation::Physical, parent: :pbcore_element do
    skip_create

    value { 'Film: 16mm' }

    initialize_with { new(attributes) }
  end
end