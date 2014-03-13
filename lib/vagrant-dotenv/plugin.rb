# coding: utf-8
module VagrantPlugins
  module Dotenv
    class Plugin < Vagrant.plugin('2')
      # Compatible Vagrant versions.
      VAGRANT_VERSION_REQUIREMENT = '>= 1.5.0'

      name 'vagrant-dotenv'
      description ''

      config 'dotenv' do
        require_relative 'config'
        Config
      end

      action_hook 'dotenv_configure', :environment_load do |hook|
        require_relative 'action'
        hook.before Action.configure
      end
    end
  end
end
