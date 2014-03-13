# coding: utf-8
source 'https://rubygems.org'
ruby '2.0.0'

gemspec

gem 'coveralls', require: false
gem 'rake'
gem 'minitest'
gem 'tailor', '~> 1.4'
gem 'cane', '~> 2.6'

group :development do
  gem 'guard-minitest'
end

group :integration do
  gem 'vagrant', git: 'https://github.com/mitchellh/vagrant',
    ref: ENV.fetch('VAGRANT_VERSION', 'v1.5.0')
end


