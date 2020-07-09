require 'spec_helper'

RSpec.describe PBCore::Instantiation::Rights::Summary do
  it_behaves_like "PBCore Element"

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_value_element }
  end
end
