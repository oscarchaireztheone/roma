# -*- encoding: utf-8 -*-
# stub: geo_units 0.3.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "geo_units"
  s.version = "0.3.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kristian Mandrup"]
  s.date = "2012-09-21"
  s.description = "Easily convert between different distance units such as kms, miles etc."
  s.email = "kmandrup@gmail.com"
  s.extra_rdoc_files = ["LICENSE.txt", "README.textile"]
  s.files = ["LICENSE.txt", "README.textile"]
  s.homepage = "http://github.com/kristianmandrup/geo_units"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Distance unit modules and functionality for use in geo libraries"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sugar-high>, [">= 0.6.0"])
      s.add_runtime_dependency(%q<sweetloader>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, [">= 1.6.4"])
    else
      s.add_dependency(%q<sugar-high>, [">= 0.6.0"])
      s.add_dependency(%q<sweetloader>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, [">= 1.6.4"])
    end
  else
    s.add_dependency(%q<sugar-high>, [">= 0.6.0"])
    s.add_dependency(%q<sweetloader>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.5.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, [">= 1.6.4"])
  end
end
