# -*- encoding : utf-8 -*-
class Api::Controllers::Index < Sinatra::Base

  get '/' do
    Api::Resources::Resource.new
    @index = {name: 'api'}
    render :rabl, :index, :format => "json"
  end

end
