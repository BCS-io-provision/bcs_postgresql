#
# Cookbook Name:: bcs_postgresql
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = "en_GB.UTF-8"
require 'pry' ; binding.pry
include_recipe 'postgresql::libpq' # A debian or ubuntu requirement
include_recipe 'postgresql::server'
include_recipe 'postgresql::contrib'
