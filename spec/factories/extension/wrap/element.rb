require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension_wrap_element, class: PBCore::Extension::Wrap::Element, parent: :pbcore_element do
    skip_create
    value { Faker::Job.title }
    initialize_with  { new(attributes) }
  end
end
