class StatesController < ApplicationController

	def index
		@states = State.all
	end

	def show
		@state = State.find(params[:id])

		secret_key = ENV['secret_key']
		leafly_id = ENV['leafly_id']
		leafly_key = ENV['leafly_key']

		Vaporizer.configure do |config|
  		config.app_id = "#{leafly_id}"
  		config.app_key = "#{leafly_key}"
		end

		@news = Unirest.get("https://faroo-faroo-web-search.p.mashape.com/api?q=marijuana+#{@state.name}",
  		headers:{
		    "X-Mashape-Key" => "#{secret_key}",
		    "Accept" => "application/json"
		  }).body

		@resources = Vaporizer::Location.search(latitude: @state.lat, longitude: @state.long, page: 0, take: 5)

	end
end
