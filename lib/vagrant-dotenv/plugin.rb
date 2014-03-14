# coding: utf-8
require 'vagrant-dotenv/action'
require 'vagrant-dotenv/config'

module VagrantPlugins
  module Dotenv
    class Plugin < Vagrant.plugin('2')
      # Compatible Vagrant versions.
      VAGRANT_VERSION_REQUIREMENT = '>= 1.5.0'

      name 'vagrant-dotenv'
      description ''

      config 'dotenv' do
        Config
      end

      action_hook 'dotenv_configure', :environment_load do |hook|
        hook.prepend Action.configure
      end
    end
  end
end
