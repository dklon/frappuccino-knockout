# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frappuccino-knockout/version'

Gem::Specification.new do |gem|
  gem.name          = "frappuccino-knockout"
  gem.version       = Frappuccino::Knockout::VERSION
  gem.authors       = ["Daniel Kwan"]
  gem.email         = ["dklon985@gmail.com"]
  gem.description   = %q{Frappuccino knockout.js binder}
  gem.summary       = %q{knockout.js binder for Frappuccino applications}
  gem.homepage      = "https://github.com/dklon/frappuccino-knockout"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
