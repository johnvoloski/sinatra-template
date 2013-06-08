require 'bundler'
Bundler.require

$: << File.dirname(__FILE__)

require 'api'
run Rack::URLMap.new Api.routes
