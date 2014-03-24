require "file_server/version"

module FileServer
  require 'sinatra/base'

  class Api < Sinatra::Base
    set :public_folder, File.expand_path('.')
    set :server, :puma

    get '/' do
      # redirect to a template that renders
      # the contents of the directory
    end
  end
end
