require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index    
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @pup_name = params["name"]
    @pup_breed = params["breed"]
    @pup_age = params["age"]

    erb :display_puppy
  end

end