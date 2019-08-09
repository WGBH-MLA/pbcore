FactoryBot.define do
  factory :pbcore_publisher_publisher, class: PBCore::Publisher::Publisher, parent: :pbcore_element do
    skip_create
    
    affiliation { 'AnAffiliation' }
    value { 'PublisherName' }
    initialize_with { new(attributes) }
  end
end
