require 'spec_helper'

RSpec.describe PBCore::Instantiation::Annotation do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_attribute :annotationType, as: :type }
    it { is_expected.to have_a_value }
  end
end
