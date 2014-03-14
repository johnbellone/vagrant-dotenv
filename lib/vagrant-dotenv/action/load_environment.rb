# coding: utf-8
module VagrantPlugins
  module Dotenv
    module Action
      class LoadEnvironment 
        def initialize(app, env)
          @app = app
        end

        def call(env)
          config = env[:machine].config.dotenv

          if config.load_files
            Dotenv.load(config.load_files)
          else
            Dotenv.load(env.root_path.join('.env'))
            Dotenv.load(env.user_path.join('.env'))
          end

          @app.call(env)
        end
      end      
    end
  end
end
