FactoryBot.define do
  factory :pbcore_creator, class: PBCore::Creator, parent: :pbcore_element do
    skip_create
    creator { build(:pbcore_creator_creator) }
    role { build(:pbcore_creator_role) }
    initialize_with { new(attributes) }
  end
end
