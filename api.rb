# -*- encoding : utf-8 -*-

# Including Application Path
$: << 'app'

# Require Environments Configurations
require File.join(File.dirname(__FILE__), 'configs/', 'environment')

# Require Initializers
require File.join(File.dirname(__FILE__), 'configs/initializers', 'rabl')

# Require Application
require File.join(File.dirname(__FILE__), 'app', 'app')

# Require and Register RABL
require 'rabl'
Rabl.register!

# Declate API Module
module Api

  # Autoload Controllers
  Dir[File.join(File.dirname(__FILE__), 'app', 'controllers/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  # Autoload Helpers
  Dir[File.join(File.dirname(__FILE__), 'app', 'helpers/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  # Autoload Models
  Dir[File.join(File.dirname(__FILE__), 'app', 'models/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  # Autoload Resources
  Dir[File.join(File.dirname(__FILE__), 'app', 'resources/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  # Autoload Validators
  Dir[File.join(File.dirname(__FILE__), 'app', 'validators/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  # Definte Routes
  def self.routes
    map = {
      '/' => Api::IndexController
    }
    # Returns URLRack Map
    map
  end

end
