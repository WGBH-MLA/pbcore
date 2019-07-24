require 'pbcore/element'

module PBCore
  class RightsSummary < Element

    autoload :Summary,   'pbcore/rights_summary/summary'
    autoload :Link,      'pbcore/rights_summary/link'

    element :pbcoreRightsSummary, as: :value
    element :rightsSummary, as: :summary, class: PBCore::RightsSummary::Summary
    element :rightsLink, as: :link, class: PBCore::RightsSummary::Link

    include PBCore::Attributes::TimeInterval

    build_xml do |xml|
      xml.pbcoreRightsSummary(xml_attributes.compact) do |xml|
        summary.build(xml) if summary
        link.build(xml) if link
      end
    end
  end
end
