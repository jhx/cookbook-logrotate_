# encoding: utf-8
name              'logrotate_'
maintainer        'James Hardie Building Products, Inc.'
maintainer_email  'doc.walker@jameshardie.com'
description       'Installs and configures logrotate'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
license           'Apache 2.0'
version           '0.2.1'

#--------------------------------------------------------------------- recipes
recipe            'logrotate_',
                  'Includes the remaining recipe(s)'
recipe            'logrotate_::chef_client',
                  'Installs logrotate and creates an entry for chef-client'

#------------------------------------------------------- cookbook dependencies
depends           'logrotate', '~> 1.5.0'

#--------------------------------------------------------- supported platforms
# tested
supports          'centos'

# platform_family?('rhel'): not tested, but should work
supports          'amazon'
supports          'oracle'
supports          'redhat'
supports          'scientific'

# platform_family?('debian'): not tested, but may work
supports          'debian'
supports          'ubuntu'
