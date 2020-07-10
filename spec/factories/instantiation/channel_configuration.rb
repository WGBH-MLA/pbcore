require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_channel_configuration, class: PBCore::Instantiation::ChannelConfiguration, parent: :pbcore_content_element do
    skip_create

    value { Faker::Music.genre }

    initialize_with { new(attributes) }
  end
end