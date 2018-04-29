#
# Cookbook:: .
# Recipe:: web_server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform'] == 'ubuntu' 
    apt_update 'update'
else
    execute "yum update"
    command "yum update -y"
end

package node['package_name'] do
  action :install
end

service node['package_name'] do
  action :start 
end