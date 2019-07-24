require 'spec_helper'

RSpec.describe PBCore::Publisher do
  it_behaves_like "PBCore Element"

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element 'publisher',
                                                           as: :publisher,
                                                           class: PBCore::Publisher::Publisher }
    it { is_expected.to have_sax_machine_top_level_element 'publisherRole',
                                                           as: :role,
                                                           class: PBCore::Publisher::Role }
  end
end
