require 'pbcore'
require 'faker'

FactoryBot.define do
  factory :pbcore_title, class: PBCore::Title, parent: :pbcore_element do
    skip_create

    value { "#{Faker::Book.title} #{Faker::Hipster.sentence}" }

    trait :alternative_title do
      value { 'This Title is Alternative' }
      type { 'Alternative' }
    end

    initialize_with { new(attributes) }
  end
end
