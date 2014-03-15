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

          if config.load_files.length == 0
            config.load_files << env.root_path.join('.env')
            config.load_files << env.user_path.join('.env')
          end

          Dotenv.load(config.load_files)

          @app.call(env)
        end
      end      
    end
  end
end
