require 'spec_helper'

RSpec.describe PBCore::Instantiation::Rights do
  it_behaves_like 'PBCore Element'

  describe 'class configuration' do
    subject { described_class }
    it { is_expected.to have_sax_machine_attribute :startTime, as: :start_time }
    it { is_expected.to have_sax_machine_attribute :endTime, as: :end_time }
    it { is_expected.to have_sax_machine_attribute :timeAnnotation, as: :time_annotation }
    it { is_expected.to have_sax_machine_top_level_element :rightsSummary, as: :summary, class: PBCore::Instantiation::Rights::Summary }
    it { is_expected.to have_sax_machine_top_level_element :rightsLink, as: :link, class: PBCore::Instantiation::Rights::Link }
  end
end
