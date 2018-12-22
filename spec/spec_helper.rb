require 'rspec/support/spec'

class RSpec::Core::Configuration
  def self.new(*args, &block)
    super.tap do |config|
      config.deprecation_stream = $stdout
    end
  end
end

Dir['./spec/support/**/*.rb'].map do |file|
  next if file =~ /fake_libs/
  require file.gsub("./spec/support", "support")
end

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.color = true

  config.expect_with :rspec do |expects|
    expects.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  $original_rspec_configuration = config
end