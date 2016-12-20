#
# Cookbook Name:: sublime_text
# Attributes:: default
#
# Copyright (C) 2016 Jason Blalock
#
# MIT License
#

distro_name = case node['platform_version']
when '14.04'
  'trusty'
when '16.04'
  'xenial'
when '16.10'
  'yakkety'
end

default['sublime-text']['version']['generation'] = 3
default['sublime-text']['platform']['distro'] = distro_name
default['sublime-text']['repository']['uri'] = "http://ppa.launchpad.net/webupd8team/sublime-text-#{node['sublime-text']['version']['generation']}/ubuntu"
default['sublime-text']['repository']['keyserver'] = 'keyserver.ubuntu.com'
default['sublime-text']['repository']['key'] = 'EEA14886'
