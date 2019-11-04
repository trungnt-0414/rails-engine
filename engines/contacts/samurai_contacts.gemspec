$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "samurai/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_contacts"
  spec.version     = Samurai::Contacts::VERSION
  spec.authors     = ["trungnt-0414"]
  spec.email       = ["nguyen.tien.trung@sun-asterisk.com"]
  spec.homepage    = "http://samurails.com"
  spec.summary     = "Contacts features of SamuraiCRM."
  spec.description = "Contacts features of SamuraiCRM."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0"
  spec.add_dependency "samurai_core"
  spec.add_dependency "deface"
  spec.add_development_dependency "mysql2"
end
