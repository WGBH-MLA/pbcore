require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_annotation, class: PBCore::Instantiation::Annotation, parent: :pbcore_content_element do
    

    value { Faker::Movies::Ghostbusters.quote }
    type  { Faker::Hacker.noun }

    
  end
end
