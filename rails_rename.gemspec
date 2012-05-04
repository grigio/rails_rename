# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_rename/version"

Gem::Specification.new do |s|
  s.name        = "rails_rename"
  s.version     = RailsRename::VERSION
  s.authors     = ["Luigi Maselli"]
  s.email       = ["grigio.org@gmail.com"]
  s.homepage    = "https://github.com/grigio/rails_rename"
  s.summary     = %q{An easy way to rename a Rails app}
  s.description = %q{An easy way to rename a Rails app}

  s.rubyforge_project = "rails_rename"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
