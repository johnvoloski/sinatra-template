# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Api::Models::Model do
  subject { Api::Models::Model.new }

  context 'Api::Models::Model.new' do
    it 'when return true' do
      subject
    end
  end
end
