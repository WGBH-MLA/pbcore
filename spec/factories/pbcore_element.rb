FactoryBot.define do
  factory :pbcore_element, class: PBCore::Element do
    skip_create

    # TODO: Add some variability to these values? Use Faker?
    source { "value of source attribute" }
    ref { "value of ref attribute" }
    annotation { "value of annotation attribute" }
    version { "value of version attribute" }

    initialize_with { new(attributes) }
  end
end
