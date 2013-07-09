# -*- encoding : utf-8 -*-
#
# Require Bundler
require 'bundler'
Bundler.require :default, :test

# Require API Application
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'api.rb'))

# Requires
require 'sinatra'
require 'rack/test'
require 'rspec'
require 'webmock/rspec'
require 'pry'

# Setup Environments
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

# Configure Rspec to Test
RSpec.configure do |config|
  config.include Rack::Test::Methods
end

# Define Application
def app
  Rack::URLMap.new Api.routes
end
