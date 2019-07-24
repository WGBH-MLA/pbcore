require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_annotation, class: PBCore::Instantiation::Annotation, parent: :pbcore_element do
    skip_create

    value { Faker::Movies::Ghostbusters.quote }
    type  { Faker::Hacker.noun }

    initialize_with { new(attributes) }
  end
end
