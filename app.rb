require_relative 'config/environment'

configure do
    enable :sessions
    set :session_secret, "2jkl38ch39sjsbi287gd63eq93w717syq91sa"
end

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :purchase
    end

end