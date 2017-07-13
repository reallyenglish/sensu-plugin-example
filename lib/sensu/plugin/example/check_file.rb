require "sensu-plugin/check/cli"
require "pathname"

module Sensu
  module Plugin
    module Example
      # a simple check to test if the given file exist
      class CheckFile < Sensu::Plugin::Check::CLI
        option :debug,
               short: "-d",
               default: false

        option :version,
               long: "--version",
               default: false

        def run
          show_version_and_exit if config[:version]
          $stderr.puts "DEBUG: debug enabled" if config[:debug]
          if exist?
            ok "File #{file} exists"
          else
            critical "File #{file} does not exist"
          end
        end

        def file
          Pathname.new(argv.first)
        end

        def version
          Sensu::Plugin::Example::VERSION
        end

        def exist?
          File.exist?(file)
        end

        def show_version_and_exit
          $stdout.puts version
          exit 0
        end
      end
    end
  end
end
