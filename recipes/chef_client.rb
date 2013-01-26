#
# Cookbook Name:: logrotate_
# Recipe:: chef_client
#
# Copyright 2012-2013, James Hardie Building Products, Inc.
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

# create configuration file in /etc/logrotate.d/
logrotate_app 'chef_client' do
  cookbook    'logrotate'
  path        '/var/log/chef/client.log'
  frequency   'weekly'
  options     %w(missingok compress delaycompress)
  rotate      12
  postrotate  'service chef-client reload'
end # logrotate_app 'chef_client'
