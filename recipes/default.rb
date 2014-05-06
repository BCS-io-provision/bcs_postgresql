#
# Cookbook Name:: bcs_postgresql
# Recipe:: default
#
# Copyright (C) 2013 RichardWigley
#
# All rights reserved - Do Not Redistribute
#

ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = "en_GB.UTF-8"
include_recipe 'postgresql::libpq' # A debian or ubuntu requirement
include_recipe 'postgresql::server'
include_recipe 'postgresql::contrib'