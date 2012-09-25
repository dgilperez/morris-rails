$:.push File.expand_path('../lib', __FILE__)
require 'morris-rails/version'

Gem::Specification.new do |s|
  s.name        = 'morris-rails'
  s.version     = Morris::Rails::VERSION
  s.authors     = ['James Logsdon']
  s.homepage    = 'https://github.com/jlogsdon/morris-rails'
  s.summary     = 'Pixels is a web framework for mobile and desktop development.'

  s.files = Dir['{lib,vendor}/**/*']

  s.add_dependency 'railties', '~> 3.0'
end

