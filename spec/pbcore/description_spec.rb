require 'spec_helper'

RSpec.describe PBCore::Description do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_attribute :descriptionType, as: :type }
    it { is_expected.to have_sax_machine_attribute :descriptionTypeRef, as: :type_ref }
  end
end
