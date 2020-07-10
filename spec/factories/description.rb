require 'pbcore'

FactoryBot.define do
  factory :pbcore_description, class: PBCore::Description, parent: :pbcore_content_element do
    
    value { Faker::Lorem.paragraph }
    type { Faker::Hacker.adjective }
    type_ref { Faker::Internet.url }
    
  end
end
