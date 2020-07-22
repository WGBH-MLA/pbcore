require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_location, class: PBCore::Instantiation::Location, parent: :pbcore_content_element do
    

    value { Faker::Address.city }

    
  end
end