require 'pbcore/element'

module PBCore
  class Coverage < Element

    autoload :Coverage,   'pbcore/coverage/coverage'
    autoload :Type,       'pbcore/coverage/type'

    element :pbcoreCoverage, as: :value
    element :coverage, as: :coverage, class: PBCore::Coverage::Coverage
    element :coverageType, as: :type, class: PBCore::Coverage::Type

    build_xml do |xml|
      xml.pbcoreCoverage(xml_attributes.compact) do |xml|
        coverage.build(xml) if coverage
        type.build(xml) if type
      end
    end
  end
end
