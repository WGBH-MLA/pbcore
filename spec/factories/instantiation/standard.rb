require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_standard, class: PBCore::Instantiation::Standard, parent: :pbcore_content_element do
    

    profile { Faker::Hacker.noun }
    value { Faker::Hacker.noun }

    
  end
end