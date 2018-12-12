# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/tig/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-tig"
  spec.version       = Itamae::Plugin::Recipe::Tig::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]

  spec.summary       = %q{Itamae plugin to install tig}
  spec.description   = %q{Itamae plugin to install tig}
  spec.homepage      = "https://github.com/sue445/itamae-plugin-recipe-tig"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler", ">= 1.10"
  spec.add_development_dependency "docker-api"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "serverspec"
end
