RSpec.shared_examples "pbcore element" do
  # This require needs to be inside the shared exmaple instead of the top of
  # the file, idk why.
  require 'equivalent-xml'

  it 'has attributes common to all PBCore elements' do
    expect(subject).to have_sax_machine_attribute :annotation
    expect(subject).to have_sax_machine_attribute :ref
    expect(subject).to have_sax_machine_attribute :source
    expect(subject).to have_sax_machine_attribute :version
  end

  describe '.to_xml' do
    before do
      # Set attributes and value of the subject on those attributes and values
      # passed into the shared spec.
      attributes.each do |attr_name, attr_val|
        setter = "#{attr_name}=".to_sym
        subject.send(setter, attr_val)
      end
      subject.value = value
    end

    it 'produces XML after setting values and attributes' do
      expect(subject.to_xml).to be_equivalent_to xml
    end
  end

  describe '.parse' do
    before { subject.parse(xml) }

    it 'parses the XML into the object, setting attributes and the element value' do
      attributes.each do |attr_name, attr_val|
        expect(subject.send(attr_name)).to eq attr_val
      end
      expect(subject.value).to eq value
    end
  end

  it 'can do a round trip with the XML using #parse and #to_xml' do
    expect(subject.parse(xml).to_xml).to be_equivalent_to xml
  end
end
