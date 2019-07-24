require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_file_size, class: PBCore::Instantiation::FileSize, parent: :pbcore_element do
    skip_create

    value { (rand * 100).round(2) }
    units_of_measure { ['B', 'kB', 'MB', 'GB'].sample }

    initialize_with { new(attributes) }
  end
end
