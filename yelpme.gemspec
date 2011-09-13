# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yelpme/version"

Gem::Specification.new do |s|
  s.name        = "yelpme"
  s.version     = Yelpme::VERSION
  s.authors     = ["brntbeer"]
  s.email       = ["brent.beer@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/yelpme"
  s.summary     = %q{Yelpme is an interface to using Yelp's API.}
  s.description = %q{Yelpme is used to utilize Yelp's API from the command line using the already existing yelp2 gem.}

  s.rubyforge_project = "yelpme"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
