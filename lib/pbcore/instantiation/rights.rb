require 'pbcore/element'

module PBCore
  class Instantiation::Rights < Element
    autoload :RightsSummary,   'pbcore/rights_summary/rights_summary'
    autoload :RightsLink,      'pbcore/rights_summary/rights_link'

    element :rightsSummary, as: :rights_summary, class: PBCore::RightsSummary::RightsSummary
    element :rightsLink, as: :rights_link, class: PBCore::RightsSummary::RightsLink

    has_time_attributes_on :instantiationRights

    build_xml do |xml|
      xml.instantiationRights(xml_attributes_hash.compact) do |xml|
        rights_summary.build(xml)
        rights_link.build(xml)
      end
    end
  end
end

