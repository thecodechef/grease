# frozen_string_literal: true

require "bundler"
Bundler.setup
Bundler::GemHelper.install_tasks

require "rake"
require "fileutils"
require "pathname"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern %r{^spec/(.+)/(.+)_step.rb$}
end

task default: :spec
