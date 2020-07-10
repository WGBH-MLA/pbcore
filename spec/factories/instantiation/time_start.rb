require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_time_start, class: PBCore::Instantiation::TimeStart, parent: :pbcore_content_element do
    

    value { Time.now.strftime("%H:%M:%S") }

    
  end
end