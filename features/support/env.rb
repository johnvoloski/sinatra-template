# -*- encoding : utf-8 -*-

# Set Rack Env
ENV['RACK_ENV'] = 'test'

# Require Bundler
require 'bundler'
Bundler.require :default, :test

# Require Application
require File.join(File.dirname(__FILE__), '..', '..', 'api.rb')

# Requires Gems
require 'rspec'
require 'factory_girl'
require 'rack/test'
require 'cucumber/rspec/doubles'
require 'headless'
#require 'database_cleaner'
#require 'database_cleaner/cucumber'

# FactoryGirl
FactoryGirl.definition_file_paths = [File.join(File.dirname(__FILE__), '..', 'factories')]
FactoryGirl.find_definitions

# Initialize Cucumber Application
class ApiWorld
  include RSpec::Expectations
  include RSpec::Matchers
  include Rack::Test::Methods

  def app
    Rack::URLMap.new Api.routes
  end
end

# Create Instance
World do
  ApiWorld.new
end

# Database Cleaner
begin
  #DatabaseCleaner.strategy = :truncation
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end
