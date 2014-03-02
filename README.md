logrotate_ Cookbook
===================
[![Build Status](https://travis-ci.org/jhx/cookbook-logrotate_.png?branch=master)](https://travis-ci.org/jhx/cookbook-logrotate_)
[![Dependency Status](https://gemnasium.com/jhx/cookbook-logrotate_.png)](https://gemnasium.com/jhx/cookbook-logrotate_)

Installs and configures logrotate.


Requirements
------------
### Cookbooks
The following cookbook is a direct dependency because it's used for common "default" functionality.

- [`logrotate`](http://github.com/opscode-cookbooks/logrotate)

### Platforms
The following platforms are supported and tested under Test Kitchen:

- CentosOS 5.10, 6.5

Other RHEL family distributions are assumed to work. See [TESTING](TESTING.md) for information about running tests in Opscode's Test Kitchen.


Attributes
----------
None.


Recipes
-------
This cookbook provides one main recipe for configuring a node.

- `default.rb` - *Use this recipe* to install and configure `logrotate`.

### chef_client
This recipe installs `logrotate` and creates an entry for chef-client.

### default
This recipe includes the remaining recipe(s).


Usage
-----
On client nodes, use the default recipe:

````javascript
{ "run_list": ["recipe[logrotate]"] }
````

The following are the key items achieved by this cookbook:

- installs `logrotate`
- creates an entry for chef-client logs in `/etc/logrotate.d`


License & Authors
-----------------
- Author:: Doc Walker (<doc.walker@jameshardie.com>)

````text
Copyright 2013-2014, James Hardie Building Products, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
````
