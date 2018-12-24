guard :bundler do
  watch %r{^Gemfile$}
  watch %r{^(.+).gemspec)$}
end

guard :rspec do
  watch %r{^lib/(.+)/(.+).rb$}
  watch %r{^spec/(.+)/(.+)_spec.rb$}
end

guard :cucumber do
  watch %r{^lib/(.+)/(.+).rb$}
  watch %r{^steps/(.+)/(.+)_step.rb$}
end

guard :rake do
  watch %r{^lib/(.+)/(.+).rb$}
  watch %r{^Rakefile$}
end
