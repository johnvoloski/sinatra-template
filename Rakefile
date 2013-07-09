# Require Bundler
require 'bundler'
Bundler.require :default, :test

# Load Tasks
Dir[File.join(File.dirname(__FILE__), 'tasks/*.rake')].each { |f| load f }

# Default Task
task :default => [:spec, :features]
