require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate])
      @all_ships = params[:pirate][:ships].collect{ |ship| Ship.new(ship)}
      
      erb :"pirates/show"
    end

  end
end
