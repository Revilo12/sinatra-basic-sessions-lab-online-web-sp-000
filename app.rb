require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, '12345'
  end

  get  '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:buy_item]
    @session = session

    erb :checkout
  end
  
end
