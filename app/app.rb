# -*- encoding : utf-8 -*-
module Api
  class App < Sinatra::Base
    set :root, File.join(File.dirname(__FILE__), '..')
  end
end
