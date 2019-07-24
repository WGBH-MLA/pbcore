require 'spec_helper'

RSpec.describe PBCore::Relation do
  it_behaves_like "PBCore Element"

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element 'pbcoreRelationType',
                                                           as: :type,
                                                           class: PBCore::Relation::Type }

    it { is_expected.to have_sax_machine_top_level_element 'pbcoreRelationIdentifier',
                                                           as: :identifier,
                                                           class: PBCore::Relation::Identifier }
  end
end
