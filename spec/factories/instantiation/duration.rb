require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_duration, class: PBCore::Instantiation::Duration, parent: :pbcore_content_element do
    

    value { Time.now.strftime("%H:%M:%S") }

    
  end
end