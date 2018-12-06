require 'spec_helper'
require 'equivalent-xml'

RSpec.describe PBCore::InstantiationDocument do
  let(:subject) { described_class.new }
  let(:xml) { fixture('instantiation_document.xml').read }

  context 'after parsing PBCore XML' do
    before { subject.parse(xml) }

    it 'has time attributes' do
      expect(subject).to have_parsed_xml_attribute_values start_time: "00:11:22:33",
                                                          end_time: "11:22:33:44",
                                                          time_annotation: "fake times"
    end

    it 'has child elements' do
      expect(subject).to have_parsed_xml_child_elements identifiers: PBCore::Instantiation::Identifier,
                                                        dates: PBCore::Instantiation::Date,
                                                        dimensions: PBCore::Instantiation::Dimensions,
                                                        physical: PBCore::Instantiation::Physical,
                                                        digital: PBCore::Instantiation::Digital,
                                                        standard: PBCore::Instantiation::Standard,
                                                        location: PBCore::Instantiation::Location,
                                                        media_type: PBCore::Instantiation::MediaType,
                                                        alternative_modes: PBCore::Instantiation::AlternativeModes,
                                                        channel_configuration: PBCore::Instantiation::ChannelConfiguration,
                                                        colors: PBCore::Instantiation::Colors,
                                                        data_rate: PBCore::Instantiation::DataRate,
                                                        essence_tracks: PBCore::Instantiation::EssenceTrack,
                                                        file_size: PBCore::Instantiation::FileSize,
                                                        languages: PBCore::Instantiation::Language,
                                                        relations: PBCore::Instantiation::Relation,
                                                        rights: PBCore::Instantiation::Rights,
                                                        time_starts: PBCore::Instantiation::TimeStart,
                                                        tracks: PBCore::Instantiation::Tracks
    end

    describe '.to_xml' do
      it 'outputs the XML equivalent to what was parsed' do
        expect(subject.to_xml).to be_equivalent_to xml
      end
    end
  end
end
