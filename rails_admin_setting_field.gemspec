$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_setting_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_setting_field"
  s.version     = RailsAdminSettingField::VERSION
  s.authors     = ["iQuest s.r.o."]
  s.email       = ["iquest@iquest.cz"]
  s.homepage    = "http://www.iquest.cz"
  s.summary     = "Adds a setting field to rails_admin."
  s.description = "A setting field for RailsAdmin that can be used to manipulate values from rails-settings."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails_admin"
end
