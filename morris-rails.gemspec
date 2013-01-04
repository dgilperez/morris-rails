# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'morris-rails/version'

Gem::Specification.new do |gem|
  gem.name        = 'morris-rails'
  gem.version     = Morris::Rails::VERSION
  gem.authors     = ['James Logsdon']
  gem.description = "morris.js rails asset gem"
  gem.summary     = 'morris-rails is an assets gem for Morris.js'
  gem.homepage    = 'https://github.com/jlogsdon/morris-rails'

  gem.files = Dir['{lib,vendor}/**/*'] + ["README.md"]

  gem.add_dependency 'railties', '~> 3.1'
end
