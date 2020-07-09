require 'spec_helper'

RSpec.describe PBCore::Extension do

  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element :extensionWrap, as: :wrap, class: PBCore::Extension::Wrap }
    it { is_expected.to have_sax_machine_top_level_element :extensionEmbedded, as: :embedded, class: PBCore::Extension::Embedded }
  end
end
