require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_generations, class: PBCore::Instantiation::Generations, parent: :pbcore_content_element do
    

    value { [ 'Proxy', 'Mezzanine', 'Master', 'Preservation Master' ].sample }

    
  end
end