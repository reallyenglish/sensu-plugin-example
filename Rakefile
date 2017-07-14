require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :test

desc "Run rubocop"
task :rubocop do
  sh "rubocop"
end

desc "Run tests"
task test: [:spec, :rubocop]

desc "Run tests and build"
task ci: [:test, :build]
