require 'pbcore'

FactoryBot.define do
  factory :pbcore_asset_type, class: PBCore::AssetType, parent: :pbcore_content_element do
    value { PBCore::Vocab.asset_types.sample }
  end
end
