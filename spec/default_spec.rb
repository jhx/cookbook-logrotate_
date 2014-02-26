# encoding: utf-8
require 'spec_helper'

describe 'logrotate_::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe 'logrotate_::chef_client' do
    it 'includes described recipe' do
      expect(chef_run).to include_recipe(subject)
    end # it
  end # describe

end # describe
