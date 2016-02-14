#
# Cookbook Name:: sublime_text
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.
include_recipe 'apt'

apt_repository 'sublime-text-3' do
  uri 'http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu'
  components ['main']
  distribution 'trusty'
  key 'EEA14886'
  keyserver 'keyserver.ubuntu.com'
  action :add
  deb_src true
end

package 'sublime-text-installer'
