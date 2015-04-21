class StatesController < ApplicationController

	def index
		@states = State.all
	end

	def show
		secret_key = ENV['secret_key']
		@state = State.find(params[:id])

		@response = Unirest.get("https://faroo-faroo-web-search.p.mashape.com/api?q=marijuana+#{@state.name}",
  		headers:{
		    "X-Mashape-Key" => "#{secret_key}",
		    "Accept" => "application/json"
		  }).body


	end
end
