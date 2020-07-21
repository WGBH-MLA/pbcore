require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_channel_configuration, class: PBCore::Instantiation::ChannelConfiguration, parent: :pbcore_content_element do
    

    value { Faker::Music.genre }

    
  end
end