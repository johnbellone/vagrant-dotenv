# coding: utf-8
module VagrantPlugins
  module VagrantDotenv
    # Middleware builders for Dotenv plugin actions.
    module Action
      # Returns an action middleware stack which configures the instance
      # if the dotenv plugin has been enabled.
      def self.configure
        Vagrant::Action::Builder.new.tap do |b|
          b.use Vagrant::Action::Builtin::Call, IsEnabled do |env, b1|
            next unless env[:result]
            b1.use LoadEnvironment
            b1.use OverloadEnvironment
          end
        end
      end

      require 'vagrant-dotenv/action/is_enabled'
      require 'vagrant-dotenv/action/load_environment'
      require 'vagrant-dotenv/action/overload_environment'
    end
  end
end
