require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_digital, class: PBCore::Instantiation::Digital, parent: :pbcore_content_element do
    

    value { 'mp4' }

    
  end
end
