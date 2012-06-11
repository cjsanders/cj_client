# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cj_client/version"

Gem::Specification.new do |s|
  s.name        = "cj_client"
  s.version     = CjClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['C.J. Sanders']
  s.email       = ['cjaysanders@gmail.com']
  s.homepage    = 'https://github.com/cjsanders/cj_client'
  s.summary     = %q{A Ruby wrapper for the Commission Junction REST API.}
  s.description = %q{A Ruby wrapper for the Commission Junction REST API.}

  s.files         = `git ls-files`.split("\n") - ['specs.watchr']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end