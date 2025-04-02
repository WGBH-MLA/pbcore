require "pbcore/version"
require "pbcore/errors"
require "nokogiri"

module PBCore

  GEM_ROOT = File.dirname(File.dirname(__FILE__))

  autoload :Element,                  'pbcore/element'
  autoload :ContentElement,           'pbcore/content_element'
  autoload :Attributes,               'pbcore/attributes'
  autoload :DescriptionDocument,      'pbcore/description_document'
  autoload :AssetType,                'pbcore/asset_type'
  autoload :AssetDate,                'pbcore/asset_date'
  autoload :Identifier,               'pbcore/identifier'
  autoload :Title,                    'pbcore/title'
  autoload :Subject,                  'pbcore/subject'
  autoload :Description,              'pbcore/description'
  autoload :Genre,                    'pbcore/genre'
  autoload :Creator,                  'pbcore/creator'
  autoload :Coverage,                 'pbcore/coverage'
  autoload :Relation,                 'pbcore/relation'
  autoload :AudienceLevel,            'pbcore/audience_level'
  autoload :AudienceRating,           'pbcore/audience_rating'
  autoload :Contributor,              'pbcore/contributor'
  autoload :Publisher,                'pbcore/publisher'
  autoload :RightsSummary,            'pbcore/rights_summary'
  autoload :Annotation,               'pbcore/annotation'
  autoload :Extension,                'pbcore/extension'
  autoload :Instantiation,            'pbcore/instantiation'
  autoload :InstantiationDocument,    'pbcore/instantiation_document'
  autoload :Vocab,                    'pbcore/vocab'

  # utilities
  autoload :ToJSON,                   'util/to_json'

  class << self
    def xsd
      File.read(File.join(GEM_ROOT, 'lib', 'pbcore-2.1.xsd'))
    end

    def validate(xml)
      errors = Nokogiri::XML::Schema(xsd).validate(Nokogiri::XML(xml))
      raise ValidationError, "#{errors.count} errors:\n#{errors.join("\n")}" unless errors.empty?
    end
  end

  class ValidationError < StandardError; end
end
