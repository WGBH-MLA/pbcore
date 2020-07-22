RSpec.describe PBCore do
  it "has a version number" do
    expect(PBCore::VERSION).not_to be nil
  end

  describe 'valdiate' do
    let(:invalid_pbcore) { <<-EOS
      <?xml version="1.0" encoding="UTF-8" >
      <foo>This is XML, but not pbcore</foo>
      EOS
    }

    let(:valid_pbcore) { build(:pbcore_description_document) }

    it 'raises an error on invalid PBCore' do
      expect { PBCore.validate(invalid_pbcore) }.to raise_error PBCore::ValidationError
    end
  end
end
