FactoryBot.define do
  factory :pbcore_publisher, class: PBCore::Publisher, parent: :pbcore_element do
    skip_create

    publisher { create(:pbcore_publisher_publisher) }
    role { create(:pbcore_publisher_role) }

    initialize_with { new(attributes) }
  end
end
