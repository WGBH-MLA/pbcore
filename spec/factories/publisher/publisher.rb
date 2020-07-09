FactoryBot.define do
  factory :pbcore_publisher_publisher, class: PBCore::Publisher::Publisher, parent: :pbcore_element do
    skip_create
    affiliation { Faker::Lorem.words }
    affiliation_ref { Faker::Internet.url }
    affiliation_source { Faker::Internet.url }
    affiliation_version { FakeVersionHelper.fake_version }
    affiliation_annotation { Faker::Company.bs }
    value { Faker::Book.publisher }
    initialize_with { new(attributes) }
  end
end
