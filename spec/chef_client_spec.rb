# encoding: utf-8
require 'spec_helper'

describe 'logrotate_::chef_client' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe '/etc/logrotate.d/chef_client' do
    it 'creates template with expected owner, group, mode' do
      expect(chef_run).to create_template(subject)
        .with(:owner => 'root', :group => 'root', :mode => '0644')
    end # it

    it 'renders file with expected path' do
      expect(chef_run).to render_file(subject)
        .with_content('/var/log/chef/client.log')
    end # it

    it 'renders file with expected frequency' do
      expect(chef_run).to render_file(subject)
        .with_content('weekly')
    end # it

    it 'renders file with expected rotate limit' do
      expect(chef_run).to render_file(subject)
        .with_content('rotate 12')
    end # it

    it 'renders file with expected options (missingok)' do
      expect(chef_run).to render_file(subject)
        .with_content('missingok')
    end # it

    it 'renders file with expected options (compress)' do
      expect(chef_run).to render_file(subject)
        .with_content('compress')
    end # it

    it 'renders file with expected options (delaycompress)' do
      expect(chef_run).to render_file(subject)
        .with_content('delaycompress')
    end # it

    it 'renders file with expected postrotate command' do
      expect(chef_run).to render_file(subject)
        .with_content('service chef-client reload')
    end # it
  end # describe

end # describe
