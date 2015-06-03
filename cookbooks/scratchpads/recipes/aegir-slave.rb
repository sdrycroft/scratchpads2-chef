#
# Cookbook Name:: scratchpads
# Recipe:: aegir-slave
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Create the .ssh directory
directory "#{node['scratchpads']['aegir']['home_folder']}/.ssh" do
  owner node['scratchpads']['aegir']['user']
  group node['scratchpads']['aegir']['group']
  mode 0700
  action :create
end
# Save SSH keys
enc_data_bag = ScratchpadsEncryptedPasswords.new(node, 'ssh')
lines = enc_data_bag.find_password 'aegir', 'public'
template "#{node['scratchpads']['aegir']['home_folder']}/.ssh/authorized_keys" do
  path "#{node['scratchpads']['aegir']['home_folder']}/.ssh/authorized_keys"
  source 'empty-file.erb'
  cookbook 'scratchpads'
  owner node['scratchpads']['aegir']['user']
  group node['scratchpads']['aegir']['group']
  mode '0744'
  action :create
  variables({
    :lines => lines
  })
end