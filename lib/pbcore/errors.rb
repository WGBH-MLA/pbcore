# PBCore Error classes and methods.
#
# The classes and methods in this file intend to serve the following purposes:
#
#  1) Provide a base class for all PBCore errors, to that host applications can
#     easily rescue from all errors thrown by this gem.
#  2) Provide specific error classes, with specific error messages, for specific
#     situations. This helps developers of host applications to quickly solve
#     bugs they may encounter when using the gem.
#  3) Provide module specific module methods that will:
#     a) encapsulate conditional logic for specific situaitons
#     b) raise specific errors
#
# New error classes should be created as new error conditions for specific
# situations arise. The pattern to follow should be:
#
#   1) Create a new error class that extends PBCore::Error.
#   2) The error class should be named in a way that indicates the specific
#      situation.
#   3) The constructor of the error class should use named arguments, and include
#      all information necessary to provide a detailed error message to
#      developers, ideally with some kind of instruction on how to correct the
#      problem.
#   3) A module method should be created to encapsulate the logic need to
#      determine if an error should be raised.
#   4) The module name should beging with "fail_if_" or "fail_unless_", followed
#      by the snake-case name of the specific error class to be raised.
#   5) The module method should test the condition, and raise the specific
#      error. This implies that the module method must also receive all
#      information necessary to pass along to the constructor of the error
#      class.

module PBCore
  class Error < StandardError; end

  class BaseIsNotPBCoreElement < Error
    def initialize(included_module:, base:)
      super("#{included_module} should only be included in PBCore::Element, but was included in #{base} (ancestors are: #{base.ancestors.join(', ')})")
    end
  end

  def self.fail_if_base_is_not_pbcore_element(included_module:, base:)
    raise BaseIsNotPBCoreElement.new(included_module: included_module, base: base) unless base.ancestors.include? PBCore::Element
  end
end
