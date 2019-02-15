# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tapdance/version'

Gem::Specification.new do |spec|
  spec.name          = "tapdance"
  spec.version       = Tapdance::VERSION
  spec.authors       = ["Olivier Lacan"]
  spec.email         = ["hi@olivierlacan.com"]

  spec.summary       = %q{ Make tap dance on nil }
  spec.description   = %q{ With tapdance you can call tap on nil and it will swallow gamma rays like a collapsing wormhome! }
  spec.homepage      = "http://github.com/olivierlacan/tapdance"
  spec.license       = "MIT"

  spec.metadata      = {
    "homepage_uri" => "https://github.com/olivierlacan/tapdance",
    "changelog_uri" => "https://github.com/olivierlacan/tapdance/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/olivierlacan/tapdance",
    "bug_tracker_uri" => "https://github.com/olivierlacan/tapdance/issues"
  }

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
end
