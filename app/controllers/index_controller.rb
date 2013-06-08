# -*- encoding : utf-8 -*-
class Api::IndexController < Sinatra::Base

  get '/' do
    @index = {name: 'api'}
    render :rabl, :index, format: 'json'
  end

end
