# coding: utf-8
module VagrantPlugins
  module Dotenv
    # Default onfiguration for the dotenv configuration.
    #
    # @!parse class Config < Vagrant::Plugin::V2::Config; end
    class Config < Vagrant.plugin('2', :config)
      attr_accessor :enabled
      attr_accessor :load_files
      attr_accessor :overload_files

      def initialize
        super

        @enabled = UNSET_VALUE
        @load_files = UNSET_VALUE
        @overload_files = UNSET_VALUE
      end

      def finalize!
        super
        
        @enabled = ENV.fetch('VAGRANT_DOTENV', false) if @enabled == UNSET_VALUE
        @load_files = nil if @load_files == UNSET_VALUE
        @overload_files = nil if @load_files == UNSET_VALUE
      end
    end
  end
end
