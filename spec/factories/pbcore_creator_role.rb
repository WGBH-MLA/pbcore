FactoryBot.define do
  factory :pbcore_creator_role, class: PBCore::Creator::Role, parent: :pbcore_element do
    value { "value of creator role" }
  end
end
