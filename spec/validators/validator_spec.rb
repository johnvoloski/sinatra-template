# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Api::Validators::Validator do
  subject { Api::Validators::Validator.new }

  context 'Api::Validators::Validator.new' do
    it 'when return true' do
      subject
    end
  end
end
