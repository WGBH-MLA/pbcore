require 'pbcore'
require 'faker'

FactoryBot.define do
  factory :pbcore_annotation, class: PBCore::Annotation, parent: :pbcore_content_element do
    value { Faker::Quote.famous_last_words }
    type { Faker::Lorem.word }
  end
end
