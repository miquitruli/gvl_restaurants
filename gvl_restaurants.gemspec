
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gvl_restaurants/version"

Gem::Specification.new do |spec|
  spec.name          = "gvl_restaurants"
  spec.version       = GvlRestaurants::VERSION
  spec.authors       = ["'MICAELLA COLOMBO'"]
  spec.email         = ["'micaelc@g.clemson.edu'"]

  spec.summary       = "Top 10 romantic restaurants in Greenville, SC"
  spec.description   = "Allows user to pick restaurant based on location and gives them expert tips plus information about restaurant"
  spec.homepage      = "https://github.com/miquitruli/gvl_restaurants"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/miquitruli/gvl_restaurants"
    spec.metadata["changelog_uri"] = "https://github.com/miquitruli/gvl_restaurants/commits/main"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
