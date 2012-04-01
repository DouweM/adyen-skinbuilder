$:.push File.expand_path('../lib', __FILE__)
require 'adyen-skinbuilder/version'

Gem::Specification.new do |s|
  s.name        = 'adyen-skinbuilder'
  s.version     = Adyen::Skinbuilder::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Priit Haamer']
  s.email       = ['priit@edicy.com']
  s.homepage    = 'http://rubygems.org/gems/adyen-skinbuilder'
  s.summary     = %q{Simple Sinatra server to make coding Adyen skins easier}
  s.description = %q{Provides helpful rake tasks and command line tools to run rack server and bundle adyen skin files}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'sinatra'
  s.add_dependency 'sinatra-contrib'
  s.add_dependency 'vegas'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '>= 2.8'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rack-test'
end
