module PBCore
  module Attributes
    module Common
      def self.included(base)
        PBCore.fail_if_base_is_not_pbcore_element(included_module: self, base: base)
        base.attribute :source
        base.attribute :ref
        base.attribute :annotation
        base.attribute :version
      end
    end
  end
end
