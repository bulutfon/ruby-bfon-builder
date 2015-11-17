# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bfon_builder/version'

Gem::Specification.new do |spec|
  spec.name          = 'bfon_builder'
  spec.version       = BfonBuilder::VERSION
  spec.authors       = ['hamitturkukaya']
  spec.email         = ['htkaya90@gmail.com']

  spec.summary       = '%q{This is a gem for easy bfon string generator for ruby}'
  spec.description   = '%q{You can generate bfon objects with simple method calls}'
  spec.homepage      = 'https://github.com/bulutfon/ruby-bfon-builder'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|bin)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']


  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_dependency 'json', '~> 1.8'
end
