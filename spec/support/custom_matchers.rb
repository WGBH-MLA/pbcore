RSpec::Matchers.define :have_sax_machine_attribute do |attr_name|
  match do |actual|
    actual.class.sax_config.top_level_attributes.map(&:name).include? attr_name.to_s
  end
end
