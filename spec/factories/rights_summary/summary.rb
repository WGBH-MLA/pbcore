require 'pbcore'

FactoryBot.define do
  factory :pbcore_rights_summary_summary, class: PBCore::RightsSummary::Summary, parent: :pbcore_content_element do
    

    value { Faker::Lorem.paragraph }

    
  end
end
