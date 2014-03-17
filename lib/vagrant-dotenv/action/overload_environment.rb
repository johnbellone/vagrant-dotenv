# coding: utf-8
require 'log4r'

module VagrantPlugins
  module VagrantDotenv
    module Action
      class OverloadEnvironment 
        def initialize(app, env)
          @app = app
        end

        def call(env)
          config = env[:global_config].fetch(:dotenv)
          Dotenv.overload(config.overload_files) if config.overload_files
          @app.call(env)
        end
      end      
    end
  end
end
