# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bootstrap-switch-rails"
  s.version = "1.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Manuel van Rijn"]
  s.date = "2013-08-22"
  s.description = "A small gem for putting bootstrap-switch into the Rails asset pipeline"
  s.email = ["manuel@manuelles.nl"]
  s.homepage = "https://github.com/manuelvanrijn/bootstrap-switch-rails"
  s.licenses = ["MIT, Apache License v2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "an asset gemification of the bootstrap-switch plugin"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
