$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_core"
  spec.version     = Samurai::Core::VERSION
  spec.authors     = ["trungnt-0414"]
  spec.email       = ["nguyen.tien.trung@sun-asterisk.com"]
  spec.homepage    = "http://samurails.com"
  spec.summary     = "Core features of SamuraiCRM."
  spec.description = "Core features of SamuraiCRM."
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
  spec.test_files = Dir[""]
  spec.add_dependency "rails", "~> 6.0.0"

  spec.add_development_dependency "mysql2"
  spec.add_dependency "sass-rails"
  spec.add_dependency "bootstrap-sass"
  spec.add_dependency "autoprefixer-rails"
  spec.add_dependency "devise"
  spec.add_dependency "cancancan"
  spec.add_dependency "bootsnap", ">= 1.4.2"

  spec.add_development_dependency "rspec-rails", "~> 4.0.0.beta2"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "ffaker"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "shoulda-matchers"
  spec.add_development_dependency "rails-controller-testing"
end
