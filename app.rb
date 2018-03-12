require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "not a secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @sessions = session
    params[:item]

    
  end
end
