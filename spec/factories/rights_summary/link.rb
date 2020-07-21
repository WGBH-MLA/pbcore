require 'pbcore'

FactoryBot.define do
  factory :pbcore_rights_summary_link, class: PBCore::RightsSummary::Link, parent: :pbcore_content_element do
    

    value { Faker::Internet.url }

    
  end
end
