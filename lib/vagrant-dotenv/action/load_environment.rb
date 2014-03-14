# coding: utf-8
module VagrantPlugins
  module Dotenv
    module Action
      class LoadEnvironment
        def initialize(app, env)
          @app = app
        end

        def call(env)
          config = env[:machine].config

          if config.dotenv.load_files
            Dotenv.load(config.dotenv.load_files)
          else
            Dotenv.load(env.root_path.join('.env'))
            Dotenv.load(env.user_path.join('.env'))
          end

          if config.dotenv.overload_files
            Dotenv.load(config.dotenv.overload_files)  
          end

          @app.call(env)
        end
      end      
    end
  end
end
