# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redirector/version"

Gem::Specification.new do |s|
  s.name        = "redirector"
  s.version     = Redirector::VERSION
  s.authors     = ["David Vallance", "Steve Donovan"]
  s.email       = ["dvallance@infotech.com", "sdonovan@infotech.com"]
  s.homepage    = ""
  s.summary     = "CSV configured redirect URLs"
  s.description = "Builds redirection rules from a map of paths to redirection URLs from a CSV configuration file"

  s.rubyforge_project = "redirector"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
	
	#  s.requirements << ""
  
	#s.add_dependency('dalli')
	#s.add_runtime_dependency "memcache"
end
