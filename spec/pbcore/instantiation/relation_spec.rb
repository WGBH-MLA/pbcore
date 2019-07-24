require 'spec_helper'
require 'equivalent-xml'

RSpec.describe PBCore::Instantiation::Relation do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_top_level_element :instantiationRelationType, as: :type, class: PBCore::Instantiation::Relation::Type }
    it { is_expected.to have_sax_machine_top_level_element :instantiationRelationIdentifier, as: :identifier, class: PBCore::Instantiation::Relation::Identifier }
  end
end
