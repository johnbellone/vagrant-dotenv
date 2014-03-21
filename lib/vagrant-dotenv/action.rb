# coding: utf-8
module VagrantPlugins
  module VagrantDotenv
    # Middleware builders for Dotenv plugin actions.
    module Action
      # Returns an action middleware stack which configures the instance
      # if the dotenv plugin has been enabled.
      def self.configure
        Vagrant::Action::Builder.new.tap do |b|
          b.use Vagrant::Action::Builtin::Call, proc do |env, b1|
            b1.use LoadEnvironment
          end
        end
      end

      require 'vagrant-dotenv/action/load_environment'
    end
  end
end
