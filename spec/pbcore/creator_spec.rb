require 'spec_helper'

RSpec.describe PBCore::Creator do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element :creator, as: :creator, class: PBCore::Creator::Creator }
    it { is_expected.to have_sax_machine_top_level_element :creatorRole, as: :role, class: PBCore::Creator::Role }
  end
end
