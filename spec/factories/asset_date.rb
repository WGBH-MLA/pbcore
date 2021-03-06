require 'pbcore'

FactoryBot.define do
  factory :pbcore_asset_date, class: PBCore::AssetDate, parent: :pbcore_content_element do
    value { DateTimeHelpers.rand_date_time }
    type { Faker::Lorem.word }

    transient do
      # `format` should be a valid format string accepted by DateTime#strftime.
      # Pass a nil or false to skip converting the value from a DateTime object
      # to ta string.
      format { nil }
    end

    after :build do |pbcore_asset_date, evaluator|
      # If a format is specified, use DateTime to parse the given date and
      # re-format it.
      if evaluator.format
        pbcore_asset_date.value = DateTime.parse(pbcore_asset_date.value).strftime(evaluator.format)
      end
    end
  end
end
