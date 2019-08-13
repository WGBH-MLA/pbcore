require 'pbcore'

FactoryBot.define do
  factory :pbcore_asset_type, class: PBCore::AssetType, parent: :pbcore_element do
    skip_create

    # this seems to yield :no_buffer as the value sometimes, changing
    # value { ['Program', 'Story', 'Moving image', 'Sound'].sample }
    value { 'Program' }
    initialize_with { new(attributes) }

    trait :program do
      value { 'Program' }
    end
  end
end
