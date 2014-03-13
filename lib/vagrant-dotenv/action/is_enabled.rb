# coding: utf-8
module VagrantPlugins
  module Dotenv
    class IsEnabled
      def initialize(app, env)
        @app = app
      end

      def call(env)
        env[:result] = plugin_enabled?(env[:machine].config.proxy)
        @app.call(env)
      end

      private

      def plugin_enabled?(config)
        config.enabled and config.enabled != ''
      end
    end
  end
end
