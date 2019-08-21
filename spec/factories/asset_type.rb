require 'pbcore'

FactoryBot.define do
  factory :pbcore_asset_type, class: PBCore::AssetType, parent: :pbcore_element do
    skip_create

    # this seems to yield :no_buffer as the value sometimes, changing
    # value { ['Program', 'Story', 'Moving image', 'Sound'].sample }
    value { 'Program' }
    
    # trait :program do
    #   value { 'Program' }
    # end
    
    initialize_with { new(attributes) }
  end
end
