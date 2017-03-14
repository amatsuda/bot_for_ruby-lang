# frozen_string_literal: true
require 'sinatra/base'

module RubyLangBot
  class Web < Sinatra::Base
    get '/' do
      'Hello.'
    end
  end
end
