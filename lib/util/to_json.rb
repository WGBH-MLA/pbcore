require 'json'
require 'nokogiri'
module PBCore
  module ToJSON
    def pbxml_to_json_xsl_doc
      Nokogiri::XSLT(File.read("pbcore_xml_to_json.xsl"))
    end

    def arrayify_node(node)
      # if truthy and not already array, wrap in array
      if node
        if node.is_a?(Array)
          node
        else
          [node]
        end
      end
    end

    def pbxml_to_json(xml)
        # escape double quotes (because they may appear in node values)
      xml = xml.gsub(%(\"), %(\\\"))
      json = pbcore_xml_to_json_xsl_doc.transform(Nokogiri::XML(xml))
      data = JSON.parse(json)
      raise "No Desc Doc TOO BAD" unless data && data["pbcoreDescriptionDocument"]

      # top multis
      data["pbcoreDescriptionDocument"]["pbcoreAssetType"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreAssetType"])
      data["pbcoreDescriptionDocument"]["pbcoreAssetDate"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreAssetDate"])
      data["pbcoreDescriptionDocument"]["pbcoreIdentifier"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreIdentifier"])
      data["pbcoreDescriptionDocument"]["pbcoreTitle"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreTitle"])
      data["pbcoreDescriptionDocument"]["pbcoreSubject"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreSubject"])
      data["pbcoreDescriptionDocument"]["pbcoreDescription"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreDescription"])
      data["pbcoreDescriptionDocument"]["pbcoreGenre"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreGenre"])
      data["pbcoreDescriptionDocument"]["pbcoreAudienceLevel"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreAudienceLevel"])
      data["pbcoreDescriptionDocument"]["pbcoreAudienceRating"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreAudienceRating"])
      data["pbcoreDescriptionDocument"]["pbcoreAnnotation"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreAnnotation"])
      
      # subelements but not multi
      data["pbcoreDescriptionDocument"]["pbcoreRelation"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreRelation"])
      data["pbcoreDescriptionDocument"]["pbcoreCoverage"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreCoverage"])
      
      # nested multis
      data["pbcoreDescriptionDocument"]["pbcoreCreator"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreCreator"])
      if data["pbcoreDescriptionDocument"]["pbcoreCreator"] && data["pbcoreDescriptionDocument"]["pbcoreCreator"].count > 0
        data["pbcoreDescriptionDocument"]["pbcoreCreator"].each_with_index do |_creator, index|
          data["pbcoreDescriptionDocument"]["pbcoreCreator"][index]["creatorRole"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreCreator"][index]["creatorRole"])
        end
      end

      data["pbcoreDescriptionDocument"]["pbcoreContributor"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreContributor"])
      if data["pbcoreDescriptionDocument"]["pbcoreContributor"] && data["pbcoreDescriptionDocument"]["pbcoreContributor"].count > 0
        data["pbcoreDescriptionDocument"]["pbcoreContributor"].each_with_index do |_contributor, index|
          data["pbcoreDescriptionDocument"]["pbcoreContributor"][index]["contributorRole"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreContributor"][index]["contributorRole"])
        end
      end
      data["pbcoreDescriptionDocument"]["pbcorePublisher"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcorePublisher"])
      if data["pbcoreDescriptionDocument"]["pbcorePublisher"] && data["pbcoreDescriptionDocument"]["pbcorePublisher"].count > 0
        data["pbcoreDescriptionDocument"]["pbcorePublisher"].each_with_index do |_publisher, index|
          data["pbcoreDescriptionDocument"]["pbcorePublisher"][index]["publisherRole"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcorePublisher"][index]["publisherRole"])
        end
      end
      data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"])
      if data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"] && data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"].count > 0
        data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"].each_with_index do |_rights_summary, index|
          data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"][index]["rightsSummary"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"][index]["rightsSummary"])
          data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"][index]["rightsLink"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"][index]["rightsLink"])
          data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"][index]["rightsEmbedded"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreRightsSummary"][index]["rightsEmbedded"])
        end
      end

      # instantiation
      data["pbcoreDescriptionDocument"]["pbcoreInstantiation"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"])
      #   instantiation contents
      if data["pbcoreDescriptionDocument"]["pbcoreInstantiation"]
        data["pbcoreDescriptionDocument"]["pbcoreInstantiation"].each_with_index do |_instantiation, index|

          # stantch fields
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationIdentifier"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationIdentifier"])
          # repeatable? unclear
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationDate"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationDate"])
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationDimensions"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationaDimensions"])
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationGenerations"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationGeneratioans"])
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationTimeStart"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationTimeStarta"])
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationLanguage"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationLanguage"])
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationIdentifier"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationIdentifier"])
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationAnnotation"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationAnnotation"])

          # who knows!
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationPart"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationPart"])
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationExtension"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationExtension"])

          # essence tracks
          data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationEssenceTrack"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationEssenceTrack"])
          if data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationEssenceTrack"]
            data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationEssenceTrack"].each_with_index do |esstrack, essindex|

              # essence track contents
              esstrack["essenceTrackIdentifier"] = arrayify_node(esstrack["essenceTrackIdentifier"])
              esstrack["essenceTrackLanguage"] = arrayify_node(esstrack["essenceTrackLanguage"])
              esstrack["essenceTrackIdentifier"] = arrayify_node(esstrack["essenceTrackIdentifier"])
              esstrack["essenceTrackIdentifier"] = arrayify_node(esstrack["essenceTrackIdentifier"])
              esstrack["essenceTrackAnnotation"] = arrayify_node(esstrack["essenceTrackAnnotation"])

              # no repeat
              # essenceTrackType
              # essenceTrackStandard
              # essenceTrackEncoding
              # essenceTrackDataRate
              # essenceTrackFrameRate
              # essenceTrackPlaybackSpeed
              # essenceTrackSamplingRate
              # essenceTrackBitDepth
              # essenceTrackFrameSize
              # essenceTrackAspectRatio
              # essenceTrackTimeStart
              # essenceTrackDuration

              # yikes! oh well
              esstrack["essenceTrackExtension"] = arrayify_node(esstrack["essenceTrackExtension"])

              data["pbcoreDescriptionDocument"]["pbcoreInstantiation"][index]["instantiationEssenceTrack"][essindex] = esstrack
            end
          end
        end
      end

      # no guarantees
      data["pbcoreDescriptionDocument"]["pbcorePart"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcorePart"])
      data["pbcoreDescriptionDocument"]["pbcoreExtension"] = arrayify_node(data["pbcoreDescriptionDocument"]["pbcoreExtension"])

      output = JSON.pretty_generate(data.compact)
    end
  end
end
