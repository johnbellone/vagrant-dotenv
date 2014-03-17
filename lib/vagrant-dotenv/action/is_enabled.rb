# coding: utf-8
require 'log4r'

module VagrantPlugins
  module VagrantDotenv
    module Action
      # Middleware which uses configuration to check to see if Dotenv plugin
      # has been enabled to run.
      class IsEnabled
        def initialize(app, env)
          @app = app
        end
 
        def call(env)
          env[:result] = plugin_enabled?(env[:global_config])
          @app.call(env)
        end

        private

        # Checks to see if configuration has been set for plugin to be enabled.
        # @param [VagrantPlugins::Dotenv::Config] config
        # @return [TrueClass, FalseClass] 
        def plugin_enabled?(config)
          config.dotenv.enabled && config.dotenv.enabled != ''
        end
      end
    end
  end
end
