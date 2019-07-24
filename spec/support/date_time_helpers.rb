# Needed for Integer#year
require 'active_support/core_ext/integer/time'
# Needed for date arithmetic e.g. - 1.year
require 'active_support/core_ext/date_time'

module DateTimeHelpers

  # Instance method for use without module name within RSpec examples.
  def rand_date_time; DateTimeHelpers.rand_date_time; end

  # Module method for use outside of RSpec examples (e.g. within factories).
  class << self
    # def rand_date_time(after: DateTime.now - 1.year, before: DateTime.now)
    def rand_date_time(after: DateTime.now - 1.year, before: DateTime.now)
      after = DateTime.parse(after.to_s)
      before = DateTime.parse(before.to_s)
      offset = rand(before.to_i - after.to_i)
      after + offset.seconds
    end
  end
end

# Add the DateTimeHelper methods to RSpec tests.
RSpec.configure { |config| config.include DateTimeHelpers } if defined? RSpec
