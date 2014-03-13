# coding: utf-8
require 'vagrant/action/builtin/call'
require 'vagrant-dotenv/action/is_enabled'
require 'vagrant-dotenv/action/load_environment'

module VagrantPlugins
  module Dotenv
    class Action
      def self.configure(opts = {})
        Vagrant::Action::Builder.new.tap do |b|
          b.use Builtin::Call, IsEnabled do |env, b1|
            next unless env[:result]
            b1.use LoadEnvironment
          end
        end
      end
    end
  end
end
