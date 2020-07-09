require 'pbcore'

FactoryBot.define do
  factory :pbcore_genre, class: PBCore::Genre, parent: :pbcore_element do
    skip_create
    value { Faker::Book.genre }
  end
end
