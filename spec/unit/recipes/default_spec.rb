#
# Cookbook Name:: sublime_text
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'sublime_text::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
  
  context 'When version 2 is specified' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new do |node|
        node.set['sublime-text']['version']['generation'] = 2
      end
      runner.converge(described_recipe)
    end

    it 'installs sublime-text package' do
      expect(chef_run).to install_package('sublime-text')
    end
  end
end
