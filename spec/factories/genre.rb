require 'pbcore'

FactoryBot.define do
  factory :pbcore_genre, class: PBCore::Genre, parent: :pbcore_content_element do
    
    value { Faker::Book.genre }
  end
end
