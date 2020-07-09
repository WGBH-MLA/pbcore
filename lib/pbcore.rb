require "pbcore/version"
require "pbcore/errors"

module PBCore
  autoload :Element,                  'pbcore/element'
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
end
