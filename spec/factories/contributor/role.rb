FactoryBot.define do
  factory :pbcore_contributor_role, class: PBCore::Contributor::Role, parent: :pbcore_element do
    skip_create

    value { Faker::Job.title }
    portrayal { Faker::Movies::StarWars.character }
    initialize_with { new(attributes) }
  end
end
