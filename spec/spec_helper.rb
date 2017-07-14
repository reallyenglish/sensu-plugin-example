require "bundler/setup"
require "sensu/plugin/example"

module Sensu
  module Plugin
    class CLI
      # rubocop:disable Style/ClassVars:
      # disable autorun at_exit during tests
      @@autorun = false
      # rubocop:enable Style/ClassVars:
    end
  end
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
