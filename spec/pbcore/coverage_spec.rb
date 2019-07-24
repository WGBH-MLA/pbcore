require 'spec_helper'

RSpec.describe PBCore::Coverage do
  it_behaves_like 'PBCore Element'

  describe 'class configuraiton' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element :coverage, as: :coverage, class: PBCore::Coverage::Coverage }
    it { is_expected.to have_sax_machine_top_level_element :coverageType, as: :type, class: PBCore::Coverage::Type }
  end
end
