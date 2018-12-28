# frozen_string_literal: true

if ENV['REPORTER_ID'] || ENV['CI']
  require 'simplecov'
  require 'coveralls'

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
  ]

  SimpleCov.minimum_coverage 95
  SimpleCov.start do
    command_name 'spec'
    add_filter 'spec'
  end
end

require 'bundler/setup'
require 'rspec'
require 'rspec/benchmark'

RSpec.configure do |c|
  c.include(RSpec::Benchmark::Matchers)

  c.expect_with :rspec do |expect|
    expect.syntax = :expect
  end

  c.disable_monkey_patching!

  c.warnings = true

  if c.files_to_run.one?
    c.default_formatter = 'doc'
  end

  c.profile_examples = 2

  $original_rspec_configuration = c
end
