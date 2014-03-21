# coding: utf-8
module VagrantPlugins
  module VagrantDotenv
    class Plugin < Vagrant.plugin('2')
      # Compatible Vagrant versions.
      VAGRANT_VERSION_REQUIREMENT = '>= 1.5.0'

      name 'vagrant-dotenv'
      description 'Load environment variables using dotenv.'

      action_hook 'dotenv_configure', :environment_load do |h|
        require 'vagrant-dotenv/action'
        h.prepend Action.configure
      end
    end
  end
end
