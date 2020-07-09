require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_extension, class: PBCore::Instantiation::Extension, parent: :pbcore_element do
    skip_create
    # NOTE: The extension elements inside of instantiationExtension are the
    # same as the elements inside of pbcoreExtension. They are not
    # distinctly for instantiations.
    wrap      { build(:pbcore_extension_wrap) }
    embedded  { build(:pbcore_extension_embedded) }
    initialize_with { new(attributes) }
  end
end
