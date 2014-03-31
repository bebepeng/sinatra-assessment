require 'sinatra/base'

class App < Sinatra::Application
  set :products, []

  get '/' do
    erb :homepage, locals: {:products => settings.products}
  end

  get '/add' do
    erb :add_product
  end

  post '/' do
    settings.products << params[:product_name]
    redirect '/'
  end
end
