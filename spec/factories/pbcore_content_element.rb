require_relative '../../spec/support/fake_version_helper'

FactoryBot.define do
  factory :pbcore_content_element, class: PBCore::ContentElement, parent: :pbcore_element do
    source { Faker::Internet.url }
    ref { Faker::Internet.url }
    annotation { Faker::Company.bs }
    version { FakeVersionHelper.fake_version }
  end
end
