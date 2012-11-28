# -*- encoding: utf-8 -*-
require File.expand_path('../lib/twitter-backup/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sam Livingston-Gray"]
  gem.email         = ["geeksam@gmail.com"]
  gem.description   = %q{Sam's ghetto tweet-backing-up thing}
  gem.summary       = %q{Sam's ghetto tweet-backing-up thing}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "slg-twitter-backup"
  gem.require_paths = ["lib"]
  gem.version       = SLG::TwitterBackup::VERSION

  gem.add_dependency 'twitter', '~> 4.3.0'
  gem.add_development_dependency 'rspec', '~> 2.12.0'
end
