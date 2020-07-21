FactoryBot.define do
  factory :pbcore_publisher_role, class: PBCore::Publisher::Role, parent: :pbcore_content_element do
    

    value { Faker::Job.title }
    
  end
end
