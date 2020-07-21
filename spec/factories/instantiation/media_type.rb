require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_media_type, class: PBCore::Instantiation::MediaType, parent: :pbcore_content_element do
    

    value { [ "Moving Image", "Sound"].sample }

    
  end
end