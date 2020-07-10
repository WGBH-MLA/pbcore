FactoryBot.define do
  factory :pbcore_instantiation_rights_link, class: PBCore::Instantiation::Rights::Link, parent: :pbcore_content_element do
    
    value { Faker::Internet.url }
    
  end
end
