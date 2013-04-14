#
# Cookbook Name:: bcs_postgresql
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "postgresql::libpq" # A debian or ubuntu requirement
include_recipe "postgresql::server"
