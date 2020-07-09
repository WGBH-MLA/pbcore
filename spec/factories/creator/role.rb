FactoryBot.define do
  factory :pbcore_creator_role, class: PBCore::Creator::Role, parent: :pbcore_element do
    skip_create

    value { Faker::Job.title }
    initialize_with { new(attributes) }
  end
end
