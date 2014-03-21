# coding: utf-8
require 'coveralls'
require 'vagrant-dotenv'
Coveralls.wear!

require 'fakefs/spec_helpers'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include FakeFS::SpecHelpers, fakefs: true

  config.color = true
  config.tty = true
end

