# coding: utf-8
require 'spec_helper'

describe 'logrotate_::chef_client' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should create file owned by root:root' do
    file = '/etc/logrotate.d/chef_client'
    expect(chef_run).to create_template(file)
      .with(:owner => 'root', :group => 'root')
    expect(chef_run).to render_file(file)
      .with_content('/var/log/chef/client.log')
  end # it

end # describe
