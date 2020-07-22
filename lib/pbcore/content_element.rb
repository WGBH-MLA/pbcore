module PBCore
  class ContentElement < Element
    # Defind attributes common to all PBCore "content elements", which is a term
    # we're using to refer to elements that contain text instead of subelements.
    # In PBCore you can either contain text or subelements, but not both.
    attribute :source
    attribute :ref
    attribute :annotation
    attribute :version
  end
end
