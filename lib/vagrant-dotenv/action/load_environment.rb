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
          config = env.fetch(:global_config).dotenv
          home_path = env.fetch(:home_path)
          root_path = env.fetch(:root_path)

          # Only load default files if there were none specified.
          if config.load_files.length == 0
            config.load_files << File.join(home_path, '.env')
            config.load_files << File.join(root_path, '.env')
          end

          Dotenv.load(*config.load_files)

          @app.call(env)
        end
      end      
    end
  end
end
