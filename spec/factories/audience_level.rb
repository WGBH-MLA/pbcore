require 'pbcore'

FactoryBot.define do
  factory :pbcore_audience_level, class: PBCore::AudienceLevel, parent: :pbcore_content_element do
    value { ['G', 'PG', 'R', 'PG-13', 'NC-17'].sample }
  end
end
