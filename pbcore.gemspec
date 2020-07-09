
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pbcore/version"

Gem::Specification.new do |spec|
  spec.name          = "pbcore"
  spec.version       = PBCore::VERSION
  spec.authors       = ["Andrew Myers"]
  spec.email         = ["andrew_myers@wgbh.org"]

  spec.summary       = "PBCore Model for Ruby"
  spec.description   = "PBCore Model for Ruby"
  spec.homepage      = "https://github.com/WGBH-MLA/pbcore"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'equivalent-xml', '~> 0.6.0'
  spec.add_development_dependency 'factory_bot', '~> 4.11'
  spec.add_development_dependency 'faker', '~> 1.0'
  spec.add_development_dependency 'activesupport', '~> 5.2'

  spec.add_dependency 'sax-machine'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'factory_bot', '~> 4.11.1'
  spec.add_dependency 'faker', '~> 1.9.3'
end
