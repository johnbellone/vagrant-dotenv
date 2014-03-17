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
          config = env[:global_config].dotenv

          if config.overload_files.length > 0
            Dotenv.overload(*config.overload_files)
          end

          @app.call(env)
        end
      end      
    end
  end
end
