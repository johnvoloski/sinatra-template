# -*- encoding : utf-8 -*-

# Require
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

# Task
Cucumber::Rake::Task.new(:features) do |c|
  c.cucumber_opts = '--format pretty'
end
