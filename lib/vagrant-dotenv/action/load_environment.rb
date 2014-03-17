# coding: utf-8
require 'log4r'

module VagrantPlugins
  module VagrantDotenv
    module Action
      class LoadEnvironment 
        def initialize(app, env)
          @app = app
        end

        def call(env)
          config = env[:global_config].fetch(:dotenv)

          # Only load default files if there were none specified.
          if config.load_files.length == 0
            config.load_files << env.home_path.join('.env') 
            config.load_files << env.root_path.join('.env')
          end

          Dotenv.load(config.load_files)

          @app.call(env)
        end
      end      
    end
  end
end
