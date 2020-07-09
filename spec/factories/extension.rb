require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension, class: PBCore::Extension, parent: :pbcore_element do
    skip_create
    wrap      { build(:pbcore_extension_wrap) }
    embedded  { build(:pbcore_extension_embedded) }
    initialize_with { new(attributes) }
  end
end
