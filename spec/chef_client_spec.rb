require 'spec_helper'

describe 'logrotate_::chef_client' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should create file owned by root:root' do
    file = '/etc/logrotate.d/chef_client'
    expect(chef_run).to render_file(file)
      .with_content('/var/log/chef/client.log')
    expect(chef_run.template(file).owner).to eq('root')
    expect(chef_run.template(file).group).to eq('root')
  end # it 'should create file owned by root:root'

end # describe 'logrotate_::chef_client'
