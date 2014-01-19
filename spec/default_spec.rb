# coding: utf-8
require 'spec_helper'

describe 'logrotate_::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes recipe logrotate_::chef_client' do
    expect(chef_run).to include_recipe('logrotate_::chef_client')
  end # it

end # describe
