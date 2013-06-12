# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Api::Controllers::Index do
  subject { get '/' }

  context 'Api::Controllers::Index.get' do
    before { Api::Resources::Resource.stub(:new) }
    it 'when return true' do
      subject
    end
  end
end
