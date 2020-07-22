require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension_wrap_authority_used, class: PBCore::Extension::Wrap::AuthorityUsed, parent: :pbcore_element do
    value { Faker::Job.title }
  end
end
