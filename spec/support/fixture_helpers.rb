module FixtureHelpers
  def fixture_path
    File.expand_path('../../fixtures', __FILE__)
  end

  def fixture(relative_path)
    File.open(File.join(fixture_path, relative_path))
  end
end

RSpec.configure { |c| c.include FixtureHelpers }
