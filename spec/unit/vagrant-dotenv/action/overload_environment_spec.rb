# coding: utf-8
require 'spec_helper'

describe VagrantPlugins::Dotenv::Action::OverloadEnvironment do
  let(:app) { lambda { |env| } }
  subject { described_class.new(app, {}) }

  let(:dotenv) { double('dotenv', enabled: true) }
  let(:config) { double('config', dotenv: dotenv) }
  let(:machine) { double('machine', config: config) }
end
