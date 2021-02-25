require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :sesssion_secret, "secret"
    end

    get '/' do
        # @session = session
        erb :index
    end

    post "/checkout" do
        new = Item.new(params[:item])
        session[:item]=new.name       
        @session = session
    end
        
end