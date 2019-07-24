module FakeVersionHelper
  # Returns a Semver-like version string, either X, or X.Y, or X.Y.Z
  def fake_version; FakeVersionHelper.fake_version; end

  def self.fake_version
    Array.new(rand(1..3)) { rand(0..20) }.join(".")
  end
end

RSpec.configure { |c| c.include FakeVersionHelper } if defined?(RSpec)
