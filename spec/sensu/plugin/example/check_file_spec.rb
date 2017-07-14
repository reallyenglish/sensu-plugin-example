require "spec_helper"
require_relative "../../../../lib/sensu/plugin/example/check_file"

RSpec.describe Sensu::Plugin::Example::CheckFile do
  let(:file) { "/etc/hosts" }
  let(:pathname) { Pathname.new(file) }
  let(:check) { Sensu::Plugin::Example::CheckFile.new([file]) }

  describe "#new" do
    it "does not raise error" do
      expect { check }.not_to raise_error
    end
  end

  describe ".file" do
    it "returns file name" do
      expect(check.file).to eq pathname
    end
  end

  describe ".version" do
    it "returns version" do
      expect(check.version).to eq Sensu::Plugin::Example::VERSION
    end
  end

  describe ".exist?" do
    it "tests the given file with File.exist?" do
      expect(File).to receive(:exist?).with(pathname)
      check.exist?
    end
  end
end
