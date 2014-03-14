# coding: utf-8
$:.unshift(File.expand_path('../lib', __FILE__))
require 'vagrant-dotenv/version'

Gem::Specification.new do |spec|
  spec.name = 'vagrant-dotenv'
  spec.version = VagrantPlugins::Dotenv::VERSION
  spec.authors = ['John Bellone']
  spec.email = ['jbellone@bloomberg.net']
  spec.description = 'A Vagrant plugin which configures environment variables.'
  spec.summary = spec.description
  spec.homepage = 'https://github.com/johnbellone/vagrant-dotenv'
  spec.license = 'Apache 2.0'
  #spec.cert_chain    = ['certs/jbellone.pem']
  #spec.signing_key   = File.join(Dir.home, '.config/gem-private_key.pem') if $0 =~ /gem\z/
  
  spec.files = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']  

  spec.add_dependency 'dotenv', '~> 0.10'
end
