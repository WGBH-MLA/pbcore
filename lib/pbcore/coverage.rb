require 'pbcore/element'

module PBCore
  class Coverage < Element

    autoload :Coverage,   'pbcore/coverage/coverage'
    autoload :Type,       'pbcore/coverage/type'

    element :coverage, as: :coverage, class: PBCore::Coverage::Coverage
    element :coverageType, as: :type, class: PBCore::Coverage::Type

    build_xml do |xml|
      xml.pbcoreCoverage(xml_attributes_hash.compact) do |xml|
        coverage.build(xml)
        type.build(xml)
      end
    end
  end
end
