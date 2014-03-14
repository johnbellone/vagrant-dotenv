# coding: utf-8
module VagrantPlugins
  module Dotenv
    module Action
      class OverloadEnvironment 
        def initialize(app, env)
          @app = app
        end

        def call(env)
          config = env[:machine].config.dotenv

          Dotenv.overload(config.overload_files) if config.overload_files
          @app.call(env)
        end
      end      
    end
  end
end
