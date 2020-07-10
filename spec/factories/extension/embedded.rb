require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension_embedded, class: PBCore::Extension::Embedded, parent: :pbcore_content_element do
    value { "<foo />" }
  end
end
