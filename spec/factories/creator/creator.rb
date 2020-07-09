FactoryBot.define do
  factory :pbcore_creator_creator, class: PBCore::Creator::Creator, parent: :pbcore_element do
    skip_create
    affiliation { Faker::Lorem.words }
    affiliation_ref { Faker::Internet.url }
    affiliation_source { Faker::Internet.url }
    affiliation_version { FakeVersionHelper.fake_version }
    affiliation_annotation { Faker::Company.bs }
    value { Faker::Movies::Lebowski.character }
    initialize_with { new(attributes) }
  end
end
