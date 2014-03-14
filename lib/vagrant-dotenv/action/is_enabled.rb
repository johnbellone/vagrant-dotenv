# coding: utf-8
module VagrantPlugins
  module Dotenv
    module Action
      class IsEnabled
        def initialize(app, env)
          @app = app
        end
 
        def call(env)
          env[:result] = plugin_enabled?(env[:machine].config)
          @app.call(env)
        end

        private

        def plugin_enabled?(config)
          config.dotenv.enabled && config.dotenv.enabled != ''
        end
      end
    end
  end
end
