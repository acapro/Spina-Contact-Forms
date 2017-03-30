$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina_contact_forms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina_contact_forms"
  s.version     = SpinaContactForms::VERSION
  s.authors     = ["Adam Cooper"]
  s.email       = ["mail@adamcooper.de"]
  s.homepage    = "http://www.github.com/acapro"
  s.summary     = "Spina contact form plugin"
  s.description = "Adds a contact form to Spina"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"
  s.add_dependency "spina"

  s.add_development_dependency "sqlite3"
end
