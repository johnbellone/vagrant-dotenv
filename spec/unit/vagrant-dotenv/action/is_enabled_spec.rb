# coding: utf-8
require 'spec_helper'
require 'vagrant-dotenv/action'

describe VagrantPlugins::Dotenv::Action::IsEnabled do
  let(:app) { lambda { |env| } }
  subject { described_class.new(app, {}) }
  
  let(:proxy_config) { double('proxy_config').tap {|p| p.stub(enabled: enabled)} }
  let(:config) { double('config').tap {|c| c.stub(proxy: proxy_config)} }
  let(:machine) { double('machine').tap {|m| m.stub(:config).and_return(config)} }

  [false, nil, ''].each do |value|
    context "with `config.dotenv.enabled = #{value}`" do
      let(:env) { { machine: machine } }
      let(:enabled) { value }

      it 'results to a false condition' do
        subject.call(env)
        expect(env[:result]).to_be be_false
      end
    end
  end

  [true, 'yes'].each do |value|
    context "with `config.dotenv.enabled = #{value}`" do
      let(:env) { {machine: machine} }
      let(:enabled) { value }

      it 'results to a true condition' do
        subject.call(env)
        expect(env[:result]).to_be be_true
      end
    end
  end
end
