FactoryBot.define do
  factory :pbcore_contributor_role, class: PBCore::Contributor::Role, parent: :pbcore_content_element do
    value { Faker::Job.title }
    portrayal { Faker::Movies::StarWars.character }
  end
end
