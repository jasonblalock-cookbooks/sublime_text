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

# Adding icon folders to server versions
%w{16x16 32x32 128x128 48x48 256x256}.each do |dir|
  directory "/usr/share/icons/hicolor/#{dir}/apps" do
    owner 'root'
    group 'root'
    mode '0755'
    recursive true
    action :create
  end
end

case node['sublime-text']['version']['generation']
when 2
  package 'sublime-text'
when 3
  package 'sublime-text-installer'
end
