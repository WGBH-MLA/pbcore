FactoryBot.define do
  factory :pbcore_creator, class: PBCore::Creator, parent: :pbcore_element do
    name {}
    role {}

    after(:build) do |pbcore_creator, evaluator|
      pbcore_creator.name = evaluator.name || build(:pbcore_creator_creator)
      pbcore_creator.role = evaluator.role || build(:pbcore_creator_role)
    end

    after(:create) do |pbcore_creator, evaluator|
      pbcore_creator.name = evaluator.name || create(:pbcore_creator_creator)
      pbcore_creator.role = evaluator.role || create(:pbcore_creator_role)
    end
  end
end
