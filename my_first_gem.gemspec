require_relative 'lib/my_first_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "my_first_gem"
  spec.version       = MyFirstGem::VERSION
  spec.authors       = ["calmpsycho333"]
  spec.email         = ["wrathking75@yahoo.com"]

  spec.summary       = "User interactive app"
  spec.description   ="user interactive app"
  spec.homepage      = "http://www.bob.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://www.bob.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.bob.com"
  spec.metadata["changelog_uri"] = "http://www.bob.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  

  
end
