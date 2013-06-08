# -*- encoding : utf-8 -*-

# Including Application Path
$: << 'app'

# Require Initializers
require File.join(File.dirname(__FILE__), 'configs/initializers', 'rabl')

# Require Environments Configurations
require File.join(File.dirname(__FILE__), 'configs/environments', 'development')
require File.join(File.dirname(__FILE__), 'configs/environments', 'test')
require File.join(File.dirname(__FILE__), 'configs/environments', 'production')

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

  # Autoload Models
  Dir[File.join(File.dirname(__FILE__), 'app', 'controllers/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  # Autoload Resources
  Dir[File.join(File.dirname(__FILE__), 'app', 'controllers/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  # Autoload Validators
  Dir[File.join(File.dirname(__FILE__), 'app', 'controllers/*.rb')].each do |f|
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
