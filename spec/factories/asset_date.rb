require 'pbcore'

def rand_date_time(after: DateTime.now - 1.year, before: DateTime.now)
  after = DateTime.parse(after.to_s)
  before = DateTime.parse(before.to_s)
  offset = rand(before.to_i - after.to_i)
  after + offset.seconds
end

FactoryBot.define do
  factory :pbcore_asset_date, class: PBCore::AssetDate, parent: :pbcore_element do
    skip_create
    # NOTE: rand_date_time returns a DateTime object, but the value here will
    # get converted to a string using transient attr `format` in the
    # after(:build) hook (see below).
    value { rand_date_time(after: (DateTime.now - 40.years)).strftime('%Y-%m-%d') }
    initialize_with { new(attributes) }

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
