# coding: utf-8
module VagrantPlugins
  module Dotenv
    class Plugin < Vagrant.plugin('2')
      # Compatible Vagrant versions.
      VAGRANT_VERSION_REQUIREMENT = '>= 1.5.0'

      name 'vagrant-dotenv'
      description ''

      config 'dotenv' do
        require 'vagrant-dotenv/config'
        Config
      end

      action_hook 'dotenv_configure', :environment_load do |hook|
        require 'vagrant-dotenv/action'
        hook.prepend Action.configure
      end
    end
  end
end
