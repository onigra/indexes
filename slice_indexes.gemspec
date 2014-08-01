# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slice_indexes/version'

Gem::Specification.new do |spec|
  spec.name          = "slice_indexes"
  spec.version       = SliceIndexes::VERSION
  spec.authors       = ["onigra"]
  spec.email         = ["3280467rec@gmail.com"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/onigra/slice_indexes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls"
end
