# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wordify_braydengreen/version'

Gem::Specification.new do |spec|
  spec.name          = "wordify_braydengreen"
  spec.version       = WordifyBraydengreen::VERSION
  spec.authors       = ["BraydenGreen"]
  spec.email         = ["brayden.p.green@gmail.com"]

  spec.summary       = %q{Practicing creating a gem}
  spec.description   = %q{Creating a gem to demo gem creation}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency ""
  spec.add_development_dependency "rspec"
end
