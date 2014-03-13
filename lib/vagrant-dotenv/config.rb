# coding: utf-8
module VagrantPlugins
  module Dotenv
    # Default onfiguration for the dotenv configuration.
    #
    # @!parse class Config < Vagrant::Plugin::V2::Config; end
    class Config < Vagrant.plugin('2', :config)
      # Defines the mode of the plugin.
      # @return [Boolean] 
      key :enabled, env_var: 'VAGRANT_DOTENV'

      # @return [Array]
      key :load_files

      # @return [Array]
      key :overload_files

      def initialize
        @enabled = UNSET_VALUE
        @load_files = UNSET_VALUE
        @overload_files = UNSET_VALUE
      end

      def finalize!
        @enabled = false if @enabled == UNSET_VALUE
        @load_files = nil if @load_files == UNSET_VALUE
        @overload_files = nil if @load_files == UNSET_VALUE
      end
    end
  end
end
