require 'spec_helper'

RSpec.describe PBCore::Contributor do
  it_behaves_like "PBCore Element"

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element 'contributor',
                                                           as: :contributor,
                                                           class: PBCore::Contributor::Contributor }

    it { is_expected.to have_sax_machine_top_level_element 'contributorRole',
                                                           as: :role,
                                                           class: PBCore::Contributor::Role }
  end
end
