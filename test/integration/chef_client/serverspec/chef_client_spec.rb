# coding: utf-8
require 'spec_helper'

describe 'logrotate_::chef_client' do
  context file('/etc/logrotate.d/chef_client') do
    it 'is file' do
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

    it 'matches expected path' do
      expect(subject.content).to match('/var/log/chef/client.log')
    end # it

    it 'matches expected frequency' do
      expect(subject.content).to match('weekly')
    end # it

    it 'matches expected options (missingok)' do
      expect(subject.content).to match('missingok')
    end # it

    it 'matches expected options (compress)' do
      expect(subject.content).to match('compress')
    end # it

    it 'matches expected options (delaycompress)' do
      expect(subject.content).to match('delaycompress')
    end # it

    it 'matches expected rotate period' do
      expect(subject.content).to match('rotate 12')
    end # it

    it 'matches expected postrotate command' do
      expect(subject.content).to match('service chef-client reload')
    end # it
  end # context

end # describe
