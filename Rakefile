# frozen_string_literal: true

require "bundler"
Bundler.setup
Bundler::GemHelper.install_tasks

require "rake"
require "fileutils"
require "pathname"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec


desc 'Measure code coverage'
task :coverage do
  begin
    original, ENV['COVERAGE'] = ENV['COVERAGE'], 'true'
    Rake::Task['spec'].invoke
  ensure
    ENV['COVERAGE'] = original
  end
end
