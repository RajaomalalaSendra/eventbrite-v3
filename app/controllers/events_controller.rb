class EventsController < ApplicationController
  def index
  end
  def new
  	@event = Event.new
  end
  def create
  	@event = Event.new(params)
  	@event.save
  	redirect_to "/"
  end
  def show
  end

end
