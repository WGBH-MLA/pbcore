require 'spec_helper'

RSpec.describe PBCore::Identifier do
  subject { described_class.new }

  let(:attributes) { { source: "value of source attribute" } }
  let(:value) { "value of element" }
  let(:xml) { "<pbcoreIdentifier source='#{attributes[:source]}'>#{value}</pbcoreIdentifier>" }

  it_behaves_like 'pbcore element'
end
