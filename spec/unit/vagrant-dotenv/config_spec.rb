# coding: utf-8
require 'spec_helper'

describe VagrantPlugins::Dotenv::Config, fakefs: true do
  let(:app) { lambda { |env| } }
  subject { described_class.new(app, {}) }
  
  let(:dotenv) { double('dotenv', enabled: true) }
  let(:config) { double('config', dotenv: dotenv) }
  let(:machine) { double('machine', config: config) }

  let(:home_path) { '/home/jbellone/.vagrant.d' }
  let(:cwd) { '/home/jbellone/Projects/vagrant-dotenv' }
  let(:env) { double('env', home_path: home_path, cwd: cwd) }

  def stub_environment(path, env)
    FileUtils.mkdir_p(path)
    File.open(File.join(path, '.env'), 'w') do |f|
      env.each { |k,v| f.puts("#{k.to_s.upcase}=#{v}\n") }
    end
  end

  before { stub_environment(home_path, foo: 1, bar: 2) }
  before { stub_environment(cwd, bar: 3, baz: 4) }
  
  context '#load_files' do
    it 'sets environment properly' do
    end
    
    it 'does not override values' do
      
    end

    it 'works properly with Array' do
      
    end

    it 'works properly with String' do
    end
  end

  context '#overload_files' do
    it 'overrides environment properly' do
    end

    it 'works properly with Array' do
      
    end

    it 'works properly with String' do
    end    
  end

  context '#enabled' do
    
  end
end
