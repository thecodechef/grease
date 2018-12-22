# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grease/version'

Gem::Specification.new do |spec|
	spec.name                        = 'grease'
	spec.version                     = Grease::VERSION
	spec.authors                     = ['Jeremy Bolding']
	spec.email                       = ['cyberchefjay@gmail.com']

	spec.summary                     = 'Grease is a Static Site Generator.'
	spec.description                 = %q{Static Site Generation done right!}
	spec.homepage                    = 'https://github.com/thecodechef/grease'
	spec.license                     = 'MIT'

	spec.files                       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
	spec.bindir                      = 'exe'
	spec.executables                 = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
	spec.require_paths               = ['lib']

	spec.add_development_dependency  'bundler'
end