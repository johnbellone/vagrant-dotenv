# coding: utf-8
source 'https://rubygems.org'
ruby '2.0.0'

gemspec

group :development, :test do
  gem 'coveralls', require: false
  gem 'rake'
  gem 'rspec', '~> 2.11'
  gem 'tailor', '~> 1.4'
  gem 'cane', '~> 2.6'
  gem 'fakefs', require: false

  gem 'guard-rspec'
  gem 'yard'
  
  gem 'vagrant', git: 'https://github.com/mitchellh/vagrant',
    ref: ENV.fetch('VAGRANT_VERSION', 'v1.5.0')
end

group :plugins do
  gem 'vagrant-dotenv', path: '.'
end


