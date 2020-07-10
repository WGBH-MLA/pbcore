require 'pbcore'

FactoryBot.define do
  factory :pbcore_audience_rating, class: PBCore::AudienceRating, parent: :pbcore_content_element do
    value { ['General', 'Empty-nester', 'K-7', 'Pre-teen'].sample }
  end
end
