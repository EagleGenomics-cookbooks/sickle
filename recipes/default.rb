# Cookbook:: sickle
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'apt' if node['platform_family'] == 'debian'
include_recipe 'build-essential'

########

# install zlib library, required for sickle
package ['zlib1g-dev'] do
  action :install
end

########

# install git client and clone repository into install dir
git_client 'default' do
  action :install
end

git node['sickle']['install_dir'] do
  repository node['sickle']['src_repo']
  revision node['sickle']['version']
  action 'checkout'
end

#########

# run command to install sickle

execute 'build sickle' do
  command  'make'
  cwd node['sickle']['install_dir']
  # not_if { ::File.exist?("#{node['sickle']['install_dir']}") }
end

########

# create link between installation directory and $PATH

link "#{node['sickle']['bin_path']}/sickle" do
  to "#{node['sickle']['install_dir']}/sickle"
end

########

magic_shell_environment 'SICKLE_VERSION' do
  value node['sickle']['version']
end
