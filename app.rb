require "sinatra/base"

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post "/names" do
    session[:name_1]= params[:name_1]
    session[:name_2] = params[:name_2]
    redirect "/play" #we created a whole block here of /names that only saves the info
  end

  get "/play" do
    @player_1 = session[:name_1]
    @player_2 = session[:name_2]
    erb :play
  end

  get "/attack" do  #we could use a post request here (and add a post method to our form) but as we're not changing the state of the program, no need
    @player_1 = session[:name_1] #I think instance variables used in app files are only available inside each block. That's why we're typinf them again.
    @player_2 = session[:name_2]
    erb :attacked
  end

  run! if app_file == $0
end
