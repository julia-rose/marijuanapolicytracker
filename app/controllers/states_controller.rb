class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
  end

  def go_to_state
    @state = State.find(params[:id])
    redirect_to @state
  end

end
