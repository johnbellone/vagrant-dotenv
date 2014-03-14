# coding: utf-8
require 'bundler/gem_tasks'
require 'cane/rake_task'
require 'tailor/rake_task'
require 'rspec/core/rake_task'

Rake::Task[:install].clear

namespace :test do
  RSpec::Core::RakeTask.new('unit') do |t|
    t.pattern = 'spec/unit/**/*_spec.rb'
  end
end

desc 'Run all tests.'
task :test => ['test:unit']
task :spec => :test
task :default => [:test]
