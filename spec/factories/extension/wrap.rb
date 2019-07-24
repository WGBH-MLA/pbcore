require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension_wrap, class: PBCore::Extension::Wrap, parent: :pbcore_element do
    skip_create
    extension_element   { build(:pbcore_extension_wrap_element) }
    extension_value     { build(:pbcore_extension_wrap_value) }
    authority_used      { build(:pbcore_extension_wrap_authority_used) }
    initialize_with     { new(attributes) }
  end
end
