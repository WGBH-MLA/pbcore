FactoryBot.define do
  factory :pbcore_creator_role, class: PBCore::Creator::Role, parent: :pbcore_content_element do
    

    value { Faker::Job.title }
    
  end
end
