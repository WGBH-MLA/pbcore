FactoryBot.define do
  factory :pbcore_instantiation_rights_summary, class: PBCore::Instantiation::Rights::Summary, parent: :pbcore_content_element do
    
    value { Faker::Lorem.paragraph }
    
  end
end
