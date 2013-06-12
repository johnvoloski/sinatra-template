# -*- encoding : utf-8 -*-

# Including Application Path
$: << File.dirname(__FILE__)

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

  module Controllers
    # Autoload Controllers
    Dir[File.join(File.dirname(__FILE__), 'app', 'controllers/*.rb')].each do |f|
      autoload File.basename(f, '.rb').camelize.to_sym, f
    end
  end

  module Models
    # Autoload Models
    Dir[File.join(File.dirname(__FILE__), 'app', 'models/*.rb')].each do |f|
      autoload File.basename(f, '.rb').camelize.to_sym, f
    end
  end

  module Resources
    # Autoload Resources
    Dir[File.join(File.dirname(__FILE__), 'app', 'resources/*.rb')].each do |f|
      autoload File.basename(f, '.rb').camelize.to_sym, f
    end
  end

  module Validators
    # Autoload Validators
    Dir[File.join(File.dirname(__FILE__), 'app', 'validators/*.rb')].each do |f|
      autoload File.basename(f, '.rb').camelize.to_sym, f
    end
  end

  # Definte Routes
  def self.routes
    map = {
      '/' => Api::Controllers::Index
    }
    # Returns URLRack Map
    map
  end

end
