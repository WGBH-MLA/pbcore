FactoryBot.define do
  factory :pbcore_contributor_contributor, class: PBCore::Contributor::Contributor, parent: :pbcore_content_element do
    affiliation { Faker::Company.name }
    value { Faker::FunnyName.two_word_name }
  end
end
