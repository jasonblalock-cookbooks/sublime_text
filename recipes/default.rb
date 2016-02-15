#
# Cookbook Name:: sublime_text
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.
include_recipe 'apt'

apt_repository "sublime-text-#{node['sublime-text']['version']['generation']}" do
  uri node['sublime-text']['repository']['uri']
  components ['main']
  distribution node['sublime-text']['platform']['release']
  key node['sublime-text']['repository']['key']
  keyserver node['sublime-text']['repository']['keyserver']
  action :add
  deb_src true
end

case node['sublime-text']['version']['generation']
when 2
  package 'sublime-text'
when 3
  package 'sublime-text-installer'
end
