require 'pbcore/element'

module PBCore
  class Instantiation::Rights < Element
    autoload :Summary,   'pbcore/instantiation/rights/summary'
    autoload :Link,      'pbcore/instantiation/rights/link'

    element :instantiationRights, as: :value
    element :rightsSummary, as: :summary, class: PBCore::Instantiation::Rights::Summary
    element :rightsLink, as: :link, class: PBCore::Instantiation::Rights::Link

    # has_time_attributes_on :instantiationRights
    include PBCore::Attributes::TimeInterval

    build_xml do |xml|
      xml.instantiationRights(xml_attributes.compact) do |xml|
        summary.build(xml) if summary
        link.build(xml) if link
      end
    end
  end
end
