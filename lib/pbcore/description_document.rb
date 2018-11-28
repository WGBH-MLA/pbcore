require 'sax-machine'
require 'pbcore/identifier'

module PBCore
  class DescriptionDocument < Base
    elements :pbcoreIdentifier, as: :identifiers, class: PBCore::Identifier
  end
end
