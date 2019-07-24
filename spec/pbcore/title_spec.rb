require 'spec_helper'

RSpec.describe PBCore::Title do
  it_behaves_like "PBCore Element"

  describe 'class configuration' do
    subject { described_class }

    it { is_expected.to have_sax_machine_attribute 'subjectType', as: :type }
    it { is_expected.to have_sax_machine_attribute 'subjectTypeSource', as: :type_source }
    it { is_expected.to have_sax_machine_attribute 'subjectTypeRef', as: :type_ref }
    it { is_expected.to have_sax_machine_attribute 'subjectTypeAnnotation', as: :type_annotation }
    # has value, no child elements
    it { is_expected.to have_sax_machine_value_element }
  end
end
