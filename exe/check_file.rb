#!/usr/bin/env ruby

require "sensu/plugin/example/check_file"

# Usage:
#
# check_file.rb filename
class CheckFile < Sensu::Plugin::Example::CheckFile
  # set a short name, instead of `Sensu::Plugin::Example::CheckFile`
  Sensu::Plugin::Example::CheckFile.check_name(self)
end
