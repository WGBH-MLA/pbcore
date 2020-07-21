FactoryBot.define do
  factory :pbcore_publisher, class: PBCore::Publisher, parent: :pbcore_element do
    

    publisher { create(:pbcore_publisher_publisher) }
    role { create(:pbcore_publisher_role) }

    
  end
end
