# coding: utf-8
require 'spec_helper'
require 'vagrant-dotenv/config'

describe VagrantPlugins::Dotenv::Action::Config do
  let(:app) { lambda { |env| } }
  subject { described_class.new(app, {}) }
  
  let(:proxy_config) { double('proxy_config').tap {|p| p.stub(enabled: enabled)} }
  let(:config) { double('config').tap {|c| c.stub(proxy: proxy_config)} }
  let(:machine) { double('machine').tap {|m| m.stub(:config).and_return(config)} }
end
