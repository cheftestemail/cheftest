#
# Cookbook Name:: dbass
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

message = node.has_key?(:message) ? node[:message] : "Hello World"

execute "echo message" do
  command "echo '#{message}'"
  action :run
end
