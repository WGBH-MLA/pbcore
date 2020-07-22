require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_file_size, class: PBCore::Instantiation::FileSize, parent: :pbcore_content_element do
    

    value { (rand * 100).round(2) }
    units_of_measure { ['B', 'kB', 'MB', 'GB'].sample }

    
  end
end
