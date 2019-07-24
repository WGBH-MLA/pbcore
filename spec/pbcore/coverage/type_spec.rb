require 'spec_helper'

RSpec.describe PBCore::Coverage::Type do
  it_behaves_like 'PBCore Element'

  describe 'class configuraiton' do
    subject { described_class }
    it { is_expected.to have_a_value }
  end
end
