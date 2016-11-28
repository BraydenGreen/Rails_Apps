# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'casino_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "casino_gem"
  spec.version       = CasinoGem::VERSION
  spec.authors       = ["BraydenGreen"]
  spec.email         = ["brayden.p.green@gmail.com"]

  spec.summary       = %q{Gem has a Casino application.}
  spec.description   = %q{Gem rolls a two-sided dice. Gem picks a random number. Gem returns red or black. Gem picks a high or low based on a number.}
  spec.homepage      = ""
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
