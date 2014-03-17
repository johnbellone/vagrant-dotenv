# coding: utf-8
module VagrantPlugins
  module VagrantDotenv
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
        @load_files = [] if @load_files == UNSET_VALUE
        @overload_files = [] if @load_files == UNSET_VALUE

        unless @load_files.kind_of?(Array)
          @load_files = [ @load_files.to_s ]
        end

        unless @overload_files.kind_of?(Array)
          @overload_files = [ @overload_files.to_s ]          
        end
      end
    end
  end
end
