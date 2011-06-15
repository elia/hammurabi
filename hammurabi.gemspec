# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'hammurabi/version'

Gem::Specification.new do |s|
  s.name        = 'hammurabi'
  s.version     = Hammurabi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Elia Schito']
  s.email       = ['perlelia@gmail.com']
  s.homepage    = ''
  s.summary     = %q{King Hammurabi's code}
  s.description = %q{King Hammurabi's famous code}
  s.license     = 'MIT'

  s.rubyforge_project = 'hammurabi'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
