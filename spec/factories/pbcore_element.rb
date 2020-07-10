require_relative '../../spec/support/fake_version_helper'

FactoryBot.define do
  factory :pbcore_element, class: PBCore::Element do
    skip_create
    initialize_with { new(attributes) }
  end
end
