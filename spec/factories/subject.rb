FactoryBot.define do
  factory :pbcore_subject, class: PBCore::Subject, parent: :pbcore_content_element do
    
    type { Faker::Hacker.adjective }
    type_source { Faker::Internet.url }
    type_ref { Faker::Internet.url }
    type_annotation { Faker::Hacker.adjective }
    value { Faker::IndustrySegments.sector }
    
  end
end
