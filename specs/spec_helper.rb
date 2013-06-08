# -*- encoding : utf-8 -*-

require File.join(File.dirname(__FILE__), '..', 'api.rb')
require 'spec'
require 'rack/test'

Spec::Runner.configure do |conf|
  conf.include Rack::Test::Methods
end

def app
  Sinatra::Application
end
