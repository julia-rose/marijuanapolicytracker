class StatesController < ApplicationController

	def index
		@states = State.all
	end

	def show
		@state = State.find(params[:id])
		@array = @state.name.split
		@name_plus = @array.join("+")

		secret_key = 'cPJySWZolCmshX38jPrzJeawUuFLp1ML0DpjsnBhLd1ZrMjwBT'
		leafly_id = '31bbc145'
		leafly_key = '4f047bb4be30a1dfa67f41f73cd9c23e'

		Vaporizer.configure do |config|
  		config.app_id = "#{leafly_id}"
  		config.app_key = "#{leafly_key}"
		end
		if @state.name == "District of Columbia"
			@news = Unirest.get("https://faroo-faroo-web-search.p.mashape.com/api?q=marijuana+d.c.",
  		headers:{
		    "X-Mashape-Key" => "#{secret_key}",
		    "Accept" => "application/json"
		  }).body

		else
			@news = Unirest.get("https://faroo-faroo-web-search.p.mashape.com/api?q=marijuana+#{@name_plus}",
	  		headers:{
			    "X-Mashape-Key" => "#{secret_key}",
			    "Accept" => "application/json"
			  }).body
		end

		@resources = Vaporizer::Location.search(latitude: @state.lat, longitude: @state.long, page: 0, take: 5)

	end

  def go_to_state
    @state = State.find(params[:id])
    redirect_to @state
  end

end
