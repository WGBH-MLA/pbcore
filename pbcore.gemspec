
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pbcore/version"

Gem::Specification.new do |spec|
  spec.name          = "pbcore"
  spec.version       = PBCore::VERSION
  spec.authors       = ["Andrew Myers"]
  spec.email         = ["andrew_myers@wgbh.org"]

  spec.summary       = "PBCore models and factories for Ruby"
  spec.description   = "Data models for parsing PBCore XML, manipulating " \
                       "PBCore metadata in Ruby, and factories to produce " \
                       "sample PBCore with Faker data."
  spec.homepage      = "https://github.com/WGBH-MLA/pbcore"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      # Keep all factories
      keep = Dir.glob('spec/factories/**/*')
      # Keep a couple of helper used by factories.
      keep += %w( spec/support/date_time_helpers.rb
                 spec/support/fake_version_helper.rb )
      # Exclude everything else in spec dir.
      # f.match(%r{^(spec)/}) unless keep.any?(f)
      keep
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'pry-byebug', '~> 3.6'
  spec.add_development_dependency 'equivalent-xml', '~> 0.6'
  spec.add_development_dependency 'factory_bot', '~> 4.11'
  spec.add_development_dependency 'faker', '~> 1.0'
  spec.add_development_dependency 'activesupport', '~> 5.2'

  spec.add_dependency 'sax-machine', '~> 1.3'
  spec.add_dependency 'nokogiri', '~> 1.10'
  spec.add_dependency 'factory_bot', '~> 4.11'
  spec.add_dependency 'faker', '~> 1.9'
end
