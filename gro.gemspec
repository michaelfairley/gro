# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gro/version'

Gem::Specification.new do |spec|
  spec.name          = "gro"
  spec.version       = Gro::VERSION
  spec.authors       = ["Michael Fairley"]
  spec.email         = ["michael.fairley@getbraintree.com"]
  spec.description   = %q{Go's concurrency model "implemented" for Ruby}
  spec.summary       = %q{Go's concurrency model "implemented" for Ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
