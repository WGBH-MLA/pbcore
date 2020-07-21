require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_date, class: PBCore::Instantiation::Date, parent: :pbcore_content_element do
    

    type { PBCore::Vocab.date_types.sample }
    value { Faker::Date.backward(rand(1..1000)) }

    
  end
end
