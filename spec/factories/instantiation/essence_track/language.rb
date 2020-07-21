require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_essence_track_language, class: PBCore::Instantiation::EssenceTrack::Language, parent: :pbcore_content_element do
    source { [ "ISO 639.2", "ISO 639.3" ].sample }
    # TODO: replace with samples from actual standard.
    value { ('a'..'z').to_a.sample(3).join }
  end
end
