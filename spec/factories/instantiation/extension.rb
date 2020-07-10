require 'pbcore'

FactoryBot.define do
  factory :pbcore_instantiation_extension, class: PBCore::Instantiation::Extension, parent: :pbcore_element do
    # NOTE: The elements inside of <instantiationExtension> are the
    # same as the elements inside of <pbcoreExtension>, so we use those
    # factories here.
    # NOTE: <extensionWrap> and <extensionEmbedded> are mutually exclusive child
    # elements of <pbcoreExtension>. However, in the factory we always choose
    # <extensionWrap> by default because we can't produce round-trippable XML
    # for <extensionEmbedded> because of how SAXMachine parsing works.
    # (See lib/pbcore/extension/embedded.rb)
    wrap { build(:pbcore_extension_wrap) }
    embedded { nil }
  end
end
