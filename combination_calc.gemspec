# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'combination_calc/version'

Gem::Specification.new do |spec|
  spec.name          = "combination_calc"
  spec.version       = CombinationCalc::VERSION
  spec.authors       = ["Takahiro HAMAGUCHI"]
  spec.email         = ["tk.hamaguchi@gmail.com"]
  spec.summary       = %q{Pattern table generator from YAML.}
  spec.description   = %q{Pattern table generator from YAML.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
