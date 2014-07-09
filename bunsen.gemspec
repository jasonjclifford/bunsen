# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bunsen/version'

Gem::Specification.new do |spec|
  spec.name          = "bunsen"
  spec.version       = Bunsen::VERSION
  spec.authors       = ["Jason Clifford"]
  spec.email         = ["jasonjclifford@gmail.com"]
  spec.summary       = "bunsen puppet tool" 
  spec.description   = "bunsen puppet tool for workflow management" 
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
