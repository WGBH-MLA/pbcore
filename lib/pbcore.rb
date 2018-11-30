require "pbcore/version"
require "pbcore/errors"

module PBCore
  autoload :Element,                  'pbcore/element'
  autoload :Attributes,               'pbcore/attributes'
  autoload :DescriptionDocument,      'pbcore/description_document'
  autoload :Identifier,               'pbcore/identifier'
  autoload :Title,                    'pbcore/title'
  autoload :Description,              'pbcore/description'

  autoload :Creator,                  'pbcore/creator'
  # Creator.autoload :Creator,          'pbcore/creator/creator'
  # Creator.autoload :Role,             'pbcore/creator/role'

  autoload :Coverage,                 'pbcore/coverage'
  # Coverage.autoload :Coverage,        'pbcore/coverage/coverage'
  # Coverage.autoload :Type,            'pbcore/coverage/type'
end
