require "spec_helper"

RSpec.describe Sensu::Plugins::Example do
  it "has a version number" do
    expect(Sensu::Plugins::Example::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end
