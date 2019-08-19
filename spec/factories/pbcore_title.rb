require 'pbcore'
require 'faker'

FactoryBot.define do
  factory :pbcore_title, class: PBCore::Title, parent: :pbcore_element do
    skip_create

    # was adding newlines and extra spaces to titles... no thank you!
    value { "#{Faker::Book.title} #{Faker::JapaneseMedia::DragonBall.character}".gsub(/[\s\n]+/, ' ') }
    trait :alternative_title do
      value { 'This Title is Alternative' }
      type { 'Alternative' }
    end

    initialize_with { new(attributes) }
  end
end
