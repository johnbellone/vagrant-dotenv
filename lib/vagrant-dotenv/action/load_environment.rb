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
          require 'pp'
          pp env

          home_path = env.fetch(:home_path)
          root_path = env.fetch(:root_path)

          load_files = []
          load_files << File.join(home_path, '.env')
          load_files << File.join(root_path, '.env')

          Dotenv.load(*load_files)

          @app.call(env)
        end
      end      
    end
  end
end
