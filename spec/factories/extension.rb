require 'pbcore'

FactoryBot.define do
  factory :pbcore_extension, class: PBCore::Extension, parent: :pbcore_element do
    # NOTE: <extensionWrap> and <extensionEmbedded> are mutually exclusive child
    # elements of <pbcoreExtension>. However, in the factory we always choose
    # <extensionWrap> by default because we can't produce round-trippable XML
    # for <extensionEmbedded> because of how SAXMachine parsing works.
    wrap { build(:pbcore_extension_wrap) }
  end
end
