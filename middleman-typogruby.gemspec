# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = "middleman-typogruby"
  s.version       = "0.0.1"
  s.platform      = Gem::Platform::RUBY
  gem.authors     = "Sebastien Serre"
  gem.email       = "sserre@msha.fr"
  gem.homepage    = "https://github.com/ssbx/middleman-typogruby"
  gem.summary     = "Middleman extension for typogruby"
  gem.description = "Middleman extension for typogruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 4.2.1"])
  
  # Additional dependencies
  s.add_runtime_dependency("typogruby", "~> 1.0.18")
end

