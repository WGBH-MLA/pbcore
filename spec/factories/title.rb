require 'pbcore'
require 'faker'

FactoryBot.define do
  factory :pbcore_title, class: PBCore::Title, parent: :pbcore_element do
    type { Faker::Hacker.adjective }
    type_source { Faker::Internet.url }
    type_ref { Faker::Internet.url }
    type_annotation { Faker::Hacker.adjective }
    value { "#{Faker::Book.title} #{Faker::Hipster.sentence}" }
  end
end
