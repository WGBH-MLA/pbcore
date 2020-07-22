require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_data_rate, class: PBCore::Instantiation::DataRate, parent: :pbcore_content_element do
    

    value { rand(100).to_s }
    units_of_measure { %w(Kbps Mbps).sample }

    
  end
end
