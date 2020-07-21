require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension_wrap_value, class: PBCore::Extension::Wrap::Value, parent: :pbcore_element do
    value { Faker::Job.title }
  end
end
