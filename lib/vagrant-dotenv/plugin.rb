# coding: utf-8
require 'vagrant-dotenv/action'
require 'vagrant-dotenv/config'

module VagrantPlugins
  module VagrantDotenv
    class Plugin < Vagrant.plugin('2')
      # Compatible Vagrant versions.
      VAGRANT_VERSION_REQUIREMENT = '>= 1.5.0'

      name 'vagrant-dotenv'
      description 'Load environment variables using dotenv.'

      config 'dotenv' do
        Config
      end

      action_hook 'dotenv_configure', :environment_plugins_loaded do |h|
        h.prepend Action.configure
      end
    end
  end
end
