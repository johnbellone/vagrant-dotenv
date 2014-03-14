# coding: utf-8
require 'spec_helper'

describe VagrantPlugins::Dotenv::Action::IsEnabled do
  let(:app) { lambda { |env| } }
  subject { described_class.new(app, {}) }

  let(:dotenv) { double('dotenv', enabled: enabled) }
  let(:config) { double('config', dotenv: dotenv) }
  let(:machine) { double('machine', config: config) }

  [false, nil, ''].each do |value|
    context "with `config.dotenv.enabled = #{value}`" do
      let(:env) { { machine: machine } }
      let(:enabled) { value }

      it 'results to a false condition' do
        subject.call(env)
        expect(env[:result]).to be_false
      end
    end
  end

  [true, 'yes'].each do |value|
    context "with `config.dotenv.enabled = #{value}`" do
      let(:env) { { machine: machine } }
      let(:enabled) { value }

      it 'results to a true condition' do
        subject.call(env)
        expect(env[:result]).to be_true
      end
    end
  end
end
