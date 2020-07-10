require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_physical, class: PBCore::Instantiation::Physical, parent: :pbcore_content_element do
    

    value { 'Film: 16mm' }

    
  end
end