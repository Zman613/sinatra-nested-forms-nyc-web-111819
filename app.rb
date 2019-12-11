require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      # binding.pry
      erb :"pirates/new"
    end

    post "/pirates" do 
      @pirate = Pirate.new(params["pirate"])
      # binding.pry
      params["pirate"]["ships"].each {|ship| Ship.new(ship)}

      @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
