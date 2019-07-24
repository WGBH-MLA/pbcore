module PBCore
  module Attributes
    module TimeInterval
      def self.included(base)
        PBCore.fail_if_base_is_not_pbcore_element(included_module: self, base: base)
        base.attribute :startTime, as: :start_time
        base.attribute :endTime, as: :end_time
        base.attribute :timeAnnotation, as: :time_annotation
      end
    end
  end
end
