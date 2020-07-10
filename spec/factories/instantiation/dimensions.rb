require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_dimensions, class: PBCore::Instantiation::Dimensions, parent: :pbcore_content_element do
    

    units_of_measure { Faker::Measurement.height("all") }
    value { Faker::Number.number(1).to_s + 'x' + Faker::Number.number(1) }

    
  end
end