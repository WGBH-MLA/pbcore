FactoryBot.define do
  factory :pbcore_creator, class: PBCore::Creator, parent: :pbcore_element do
    
    creator { build(:pbcore_creator_creator) }
    role { build(:pbcore_creator_role) }
    
  end
end
