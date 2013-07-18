# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newgem/version'

Gem::Specification.new do |spec|
  spec.name          = "newgem"
  spec.version       = Newgem::VERSION
  spec.authors       = ["Dr Nic Williams"]
  spec.email         = ["drnicwilliams@gmail.com"]
  spec.description   = %q{Quickly bundle any Ruby libraries into a RubyGem and share it with the world, your colleagues, or perhaps just with yourself amongst your projects.}
  spec.summary       = %q{RubyGems are centrally stored, versioned, and support dependencies between other gems, so they are the ultimate way to bundle libraries, executables, associated tests, examples, and more.

Within this gem, you get one thing - <code>newgem</code> - an executable to create your own gems. Your new gems will include designated folders for Ruby code, test files, executables, and even a default website page for you to explain your project, and which instantly uploads to RubyForge website (which looks just like this one by default)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'i18n'
  spec.add_dependency 'rubyforge'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "hoe"
  spec.add_development_dependency 'cucumber'
  #spec.add_dependency 'rubigen', "~> 1.5.8" Put back in once rubigen vendor updates
end
