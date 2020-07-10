require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_alternative_modes, class: PBCore::Instantiation::AlternativeModes, parent: :pbcore_content_element do
    

    value { Faker::Lorem.words.first }

    
  end
end