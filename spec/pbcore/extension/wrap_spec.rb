require 'spec_helper'

RSpec.describe PBCore::Extension::Wrap do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element :extensionElement, as: :extension_element, class: PBCore::Extension::Wrap::Element }
    it { is_expected.to have_sax_machine_top_level_element :extensionValue, as: :extension_value, class: PBCore::Extension::Wrap::Value }
    it { is_expected.to have_sax_machine_top_level_element :extensionAuthorityUsed, as: :authority_used, class: PBCore::Extension::Wrap::AuthorityUsed }
  end
end
