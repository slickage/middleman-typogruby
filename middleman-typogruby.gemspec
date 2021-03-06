# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-typogruby"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sebastien Serre"]
  s.email       = "sserre@msha.fr"
  s.homepage    = "https://github.com/ssbx/middleman-typogruby"
  s.summary     = "Middleman extension for typogruby"
  s.description = "Middleman extension for typogruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 4.2.1"])

  # Additional dependencies
  s.add_runtime_dependency("typogruby", "~> 1.0.18")
  s.add_runtime_dependency("nokogiri", "~> 1.6.7.2")
end

