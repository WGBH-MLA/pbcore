require 'spec_helper'

RSpec.describe PBCore::Subject do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }

    it { is_expected.to have_sax_machine_attribute 'titleType', as: :type }
    it { is_expected.to have_sax_machine_attribute 'titleTypeSource', as: :type_source }
    it { is_expected.to have_sax_machine_attribute 'titleTypeRef', as: :type_ref }
    it { is_expected.to have_sax_machine_attribute 'titleTypeAnnotation', as: :type_annotation }
    # has value, no child elements
    it { is_expected.to have_sax_machine_value_element }
  end
end
