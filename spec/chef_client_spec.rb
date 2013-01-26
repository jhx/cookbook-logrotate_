require 'chefspec'
require 'librarian/chef/integration/knife'

describe 'logrotate_::chef_client' do
  opts = { :cookbook_path => Librarian::Chef.install_path.to_s }
  let (:chef_run) do
    ChefSpec::ChefRunner.new(opts).converge 'logrotate_::chef_client'
  end # let (:chef_run)
  
  it 'should create file owned by root:root' do
    file = '/etc/logrotate.d/chef_client'
    chef_run.should create_file_with_content file, '/var/log/chef/client.log'
    chef_run.template(file).should be_owned_by 'root', 'root'
  end # it 'should create file owned by root:root'
  
end # describe 'logrotate_::chef_client'
