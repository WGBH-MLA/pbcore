require 'spec_helper'

RSpec.describe PBCore::Instantiation::FileSize do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_attribute :unitsOfMeasure, as: :units_of_measure }
    it { is_expected.to have_a_value }
  end
end
