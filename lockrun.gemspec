# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lockrun/version'

Gem::Specification.new do |spec|
  spec.name          = "lockrun"
  spec.version       = Lockrun::VERSION
  spec.authors       = ["Corey Donohoe"]
  spec.email         = ["atmos@atmos.org"]
  spec.summary       = %q{Prevent process dogpiling}
  spec.description   = %q{Disallow processes from trying to run on top of each other when they share resources}
  spec.homepage      = "https://github.com/atmos/lockrun.rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
