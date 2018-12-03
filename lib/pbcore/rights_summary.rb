require 'pbcore/element'

module PBCore
  class RightsSummary < Element

    autoload :RightsSummary,   'pbcore/rights_summary/rights_summary'
    autoload :RightsLink,       'pbcore/rights_summary/rights_link'

    element :rightsSummary, as: :rights_summary, class: PBCore::RightsSummary::RightsSummary
    element :rightsLink, as: :rights_link, class: PBCore::RightsSummary::RightsLink

    build_xml do |xml|
      xml.rightsSummary(xml_attributes_hash.compact) do |xml|
        summary.build(xml)
        link.build(xml)
      end
    end
  end
end
