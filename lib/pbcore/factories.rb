require 'factory_bot'

GEM_ROOT = File.dirname(File.dirname(File.dirname(__FILE__)))

require File.join(GEM_ROOT, 'spec', 'support', 'date_time_helpers')
Dir.glob(File.join(GEM_ROOT, 'spec', 'factories', '**', '*.rb')).each { |file| require(file) }
