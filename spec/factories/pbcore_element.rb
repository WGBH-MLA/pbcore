require_relative '../../spec/support/fake_version_helper'

FactoryBot.define do
  factory :pbcore_element, class: PBCore::Element do
    skip_create

    source { Faker::Internet.url }
    ref { Faker::Internet.url }
    annotation { Faker::Company.bs }
    version { FakeVersionHelper.fake_version }

    initialize_with { new(attributes) }
  end
end
