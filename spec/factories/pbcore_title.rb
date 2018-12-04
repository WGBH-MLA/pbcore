FactoryBot.define do
  factory :pbcore_title, class: PBCore::Title, parent: :pbcore_element do
    type { "value of titleType attribute" }
    type_source { "value of titleTypeSource attribute" }
    type_ref { "value of titleTypeRef attribute" }
    type_annotation { "value of titleTypeAnnotation attribute" }
  end
end
