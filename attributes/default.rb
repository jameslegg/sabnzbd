#
# Cookbook Name:: sabnzbd
# Attributes:: default
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
default["sabnzbd"]["user"] = 'sabnzbd'
default["sabnzbd"]["group"] = 'sabnzbd'
default["sabnzbd"]["install_dir"] = "/srv/webapps/sabnzbd"
default["sabnzbd"]["install_style"] = 'git'
default["sabnzbd"]["git_url"] = 'https://github.com/sabnzbd/sabnzbd.git'
default["sabnzbd"]["git_ref"] = 'e24aedc6acf1e477887a115b9a423838bdb19172'
