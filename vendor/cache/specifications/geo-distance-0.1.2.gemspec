# -*- encoding: utf-8 -*-
# stub: geo-distance 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "geo-distance"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kristian Mandrup"]
  s.date = "2011-01-13"
  s.description = "Calculates the geo distance between two locations using longitude and latitude using Haversine, Speherical or Vincenty formula. \nThis is done using Math formulas without resorting to Active Record or SQL DB functionality"
  s.email = "kmandrup@gmail.com"
  s.extra_rdoc_files = ["LICENSE.txt", "README.textile"]
  s.files = ["LICENSE.txt", "README.textile"]
  s.homepage = "http://github.com/kristianmandrup/geo-distance"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Calculates the geo distance between two locations using longitude and latitude, using Haversine, Speherical or Vincenty formula"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
