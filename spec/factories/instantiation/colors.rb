require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_colors, class: PBCore::Instantiation::Colors, parent: :pbcore_content_element do
    

    value { Faker::Color.color_name }

    
  end
end