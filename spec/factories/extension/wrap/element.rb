require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension_wrap_element, class: PBCore::Extension::Wrap::Element, parent: :pbcore_element do
    value { Faker::Job.title }
  end
end
