# encoding: utf-8
require 'spec_helper'

describe 'logrotate_::chef_client' do
  describe file('/etc/logrotate.d/chef_client') do
    it 'is a file' do
      expect(subject).to be_file
    end # it

    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 644' do
      expect(subject).to be_mode(644)
    end # it

    it 'includes expected path' do
      expect(subject.content).to include('/var/log/chef/client.log')
    end # it

    it 'includes expected frequency' do
      expect(subject.content).to include('weekly')
    end # it

    it 'includes expected rotate limit' do
      expect(subject.content).to include('rotate 12')
    end # it

    it 'includes expected options (missingok)' do
      expect(subject.content).to include('missingok')
    end # it

    it 'includes expected options (compress)' do
      expect(subject.content).to include('compress')
    end # it

    it 'includes expected options (delaycompress)' do
      expect(subject.content).to include('delaycompress')
    end # it

    it 'includes expected postrotate command' do
      expect(subject.content).to include('service chef-client reload')
    end # it
  end # describe

end # describe
