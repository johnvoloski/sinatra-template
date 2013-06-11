# -*- encoding : utf-8 -*-
class SomeConfiguration
  attr_accessor :config

  def initialize(config)
    @config = config
  end

  def some_url
    config['api:url']
  end
end
