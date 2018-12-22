# frozen_string_literal: true

require "bundler"
Bundler.setup
Bundler::GemHelper.install_tasks

require "rake"
require "fileutils"
require "pathname"

require "rspec/core/rake_task"

require "cucumber/rake/task"
Cucumber::Rake::Task.new(:cucumber)

multitask :default => [:spec, :cucumber]

task :clobber do
  rm_rf 'pkg'
  rm_rf 'tmp'
  rm_rf 'coverage'
  rm_rf '.yardoc'
end

namespace :spec do
  desc "Run All Tests"
  RSpec::Core::RakeTask.new(:all) do |t|
    t.ruby_opts = %w{-w}
  end

  desc "Run UI Tests"
  RSpec::Core::RakeTask.new(:ui) do |t|
    t.ruby_opts = %w{-w}
    t.rspec_opts = %{--tag ui}
  end
end