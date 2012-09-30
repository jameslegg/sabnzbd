#
# Cookbook Name:: sabnzbd
# Recipe:: default
#
# Copyright 2012, Alex Howells <alex@howells.me>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
user node['sabnzbd']['user'] do
  shell '/bin/false'
  comment 'Web Application - SABnzbd'
  home node['sabnzbd']['install_dir']
  supports :manage_home => false
  system true
end

directory node['sabnzbd']['install_dir'] do
  mode 0755
  owner node['sabnzbd']['user']
  group node['sabnzbd']['group']
  recursive true
end

git node['sabnzbd']['install_dir'] do
  repository node['sabnzbd']['git_url']
  revision node['sabnzbd']['git_ref']                                   
  action :sync                                     
  user node['sabnzbd']['user']                 
  group node['sabnzbd']['group']                      
end
