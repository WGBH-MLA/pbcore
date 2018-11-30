FactoryBot.define do
  factory :pbcore_creator_creator, class: PBCore::Creator::Creator, parent: :pbcore_element do
    value { "value of creator name" }
  end
end
