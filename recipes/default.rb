#
# Cookbook Name:: bcs_postgresql
# Recipe:: default
#
# Copyright (C) 2013 RichardWigley
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'postgresql::server'
include_recipe 'postgresql::contrib'
