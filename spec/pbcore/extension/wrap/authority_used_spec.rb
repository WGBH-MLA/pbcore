require 'spec_helper'

RSpec.describe PBCore::Extension::Wrap::AuthorityUsed do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_a_value }
  end
end
