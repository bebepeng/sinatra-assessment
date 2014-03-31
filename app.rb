require 'sinatra/base'

class App < Sinatra::Application
  get '/' do
    erb :homepage
  end
end